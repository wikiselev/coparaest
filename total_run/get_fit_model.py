#! /usr/bin/env python
#
# TODO: none
#
# This script updates the model with the estimated parameters in order to be able
# to reproduce the parameter estimation results.
#
# usage: bsub python get_fit_model.py folder_num param set_num
# where:
# folder_num is the number of parameter estimation folder 1-10
# set_num is the number of the parameter set 1-100
#
# Author: Vladimir Kiselev

from COPASI import *
import sys
import re

# command line arguments:
# 1. number of parameter estimation folder 1-10
# 2. number of the parameter set 1-100
folder_num = sys.argv[1]
set_num = sys.argv[2]

# open the file with parameter sets
f = open("../../../" + folder_num + "/scripts/" + "best_param_values.txt", 'r')
blocks = f.read()
f.close()

# split the file text by parameter sets
blocks = blocks.split('\n\n\n')

# excracting the file order number (param_set_number) from best_obj_value.txt
f = open("../../../" + folder_num + "/scripts/" + "best_obj_values.txt", 'r')
blocks_obj = f.read()
f.close()
blocks_obj = blocks_obj.split('\n')

param_set_num = -1

for i in range(0, 3):
    if int(blocks_obj[i].split('\t')[0]) == int(set_num):
        param_set_num = i

if param_set_num < 0:
    print >> sys.stderr, "The set number provided is not from best estimation!!!"
    sys.exit()

# create a COPASI model object
dataModel = CCopasiRootContainer.addDatamodel()
# import the model from the model file
dataModel.loadModel("../model.cps")
model = dataModel.getModel()

# modify the parameters in the model accordingly with the chosen best parameter set
params = blocks[param_set_num].split('\n')
for param in params:
    if re.search("\[pten\]_0", param, flags=0) == None: # avoiding initial concentration parameters
        param_name = param.split(": \t")[0]
        param_value = param.split(": \t")[1]
        reaction_name = param_name.split(').')[0]
        reaction_name = reaction_name.split('(')[1]
        param_name = param_name.split(').')[1]
        model.getReactions().getByName(reaction_name).setParameterValue(param_name, float(param_value))
    else: # if the parameter is the initial concentration (I only have PTEN initial concentration)
        pten_value = param.split(": \t")[1]

# modify initial concentrations
changedObjects = ObjectStdVector()
# update concentration of pten
model.getMetabolite(model.findMetabByName("pten")).setInitialConcentration(float(pten_value))
object = model.getMetabolite(model.findMetabByName("pten")).getObject(CCopasiObjectName("Reference=InitialConcentration"))
assert object != None
changedObjects.push_back(object)
# compile needs to be done before updating all initial values for
# the model with the refresh sequence
model.compileIfNecessary()
# now that we are done building the model, we have to make sure all
# initial values are updated according to their dependencies
model.updateInitialValues(changedObjects)

# save the fitted model to the file
dataModel.saveModel("../../../fit_models/model_" + folder_num + "_" + set_num + ".cps", True)
