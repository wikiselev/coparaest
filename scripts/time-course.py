#!/usr/bin/env python

# TODO: none
#
# Usage: python time_course cps_file iteration_index
# where:
# cps_file - copasi model file under consideration
# iteration_index - index number of parameter estimation iteration
#
# This script does the following sequence of tasks:
# 1. imports model.cps (COPASI)
# 2. run a time course with model.cps and save the results to 
# ../output/wt_est/wt_est[iteration_index].txt file
# 3. set concentration of PTEN to 0
# 4. run a time course with modified (PTEN KO) model.cps  and save the results to
# ../output/pten_est/pten_est[iteration_index].txt file
#
# Author: Vladimir Kiselev

def time_course_task(exp_type):
    # use the global dataModel definition
    global dataModel
    # get the trajectory task object
    trajectoryTask = dataModel.getTask("Time-Course")
    assert trajectoryTask != None
    # if there isn't one
    if trajectoryTask == None:
        # create a one
        trajectoryTask = CTrajectoryTask()
        # add the time course task to the task list
        # this method makes sure that the object is now owned 
        # by the list and that it does not get deleted by SWIG
        dataModel.getTaskList().addAndOwn(trajectoryTask)

    # set a deterministic time course
    trajectoryTask.setMethodType(CCopasiMethod.deterministic)
    # pass a pointer of the model to the problem
    trajectoryTask.getProblem().setModel(dataModel.getModel())
    # activate the task so that it will be run when the model is saved
    # and passed to CopasiSE
    trajectoryTask.setScheduled(True)
    # get the problem for the task to set some parameters
    problem = trajectoryTask.getProblem()
    # simulate 900 steps
    problem.setStepNumber(900)
    # start at time 0
    dataModel.getModel().setInitialTime(0.0)
    # simulate a duration of 900 time units
    problem.setDuration(900)
    # tell the problem to actually generate time series data
    problem.setTimeSeriesRequested(True)
    # set some parameters for the LSODA method through the method
    method = trajectoryTask.getMethod()

    result=True

    try:
        # now we run the actual trajectory
        result=trajectoryTask.process(True)
    except:
        print >> sys.stderr,  "Error. Running the time course simulation failed." 
        # check if there are additional error messages
        if CCopasiMessage.size() > 0:
            # print the messages in chronological order
            print >> sys.stderr, CCopasiMessage.getAllMessageText(True)
        return 1

    if result==False:
        print >> sys.stderr,  "An error occured while running the time course simulation." 
        # check if there are additional error messages
        if CCopasiMessage.size() > 0:
            # print the messages in chronological order
            print >> sys.stderr, CCopasiMessage.getAllMessageText(True)
        return 1

    # we write the data to a file
    timeSeries = trajectoryTask.getTimeSeries()
    # we simulated 900 steps, including the initial state, this should be
    # 901 step in the timeseries
    assert timeSeries.getRecordedSteps() == 901
    iMax = timeSeries.getNumVariables()
    lastIndex = timeSeries.getRecordedSteps() - 1
    # open the file
    # we need to remember in which order the variables are written to file
    # since we need to specify this later in the parameter fitting task
    indexSet=[]
    metabVector=[]

    # write the header
    # the first variable in a time series is a always time, for the rest
    # of the variables, we use the SBML id in the header
    os=open(exp_type + ".txt","a")
    os.write("time")
    keyFactory=CCopasiRootContainer.getKeyFactory()
    assert keyFactory != None
    for i in range(1,iMax):
        key=timeSeries.getKey(i)
        object=keyFactory.get(key)
        assert object != None
        # only write header data or metabolites
        if object.__class__==CMetab:
            os.write("\t")
            os.write(timeSeries.getTitles()[i])
            indexSet.append(i)
            metabVector.append(object)
    os.write("\n")
    data=0.0
    for i in range(0,lastIndex):
        s=""
        for j in range(0,iMax):
            # we only want to  write the data for metabolites
            # the compartment does not interest us here
            if j==0 or (j in indexSet):
                # write the data
                data=timeSeries.getConcentrationData(i, j)
                s=s+str(data)
                s=s+"\t"
        # remove the last two characters again
        os.write(s[0:-2])
        os.write("\n")
    os.close()

def set_init_conc(comps, init_concs):
    # use the global model definition
    global model
    # we have to keep a set of all the initial values that are changed during
    # the model building process
    # They are needed after the model has been built to make sure all initial
    # values are set to the correct initial value
    changedObjects=ObjectStdVector()
    # make concentration of PTEN equals 0 -- PTEN knock out (it's index is 2)
    for comp, init_conc in zip(comps, init_concs):
        model.getMetabolite(comp).setInitialConcentration(init_conc)
        object = model.getMetabolite(comp).getObject(CCopasiObjectName("Reference=InitialConcentration"))
        assert object != None
        changedObjects.push_back(object)
    # finally compile the model
    # compile needs to be done before updating all initial values for
    # the model with the refresh sequence
    model.compileIfNecessary()
    # now that we are done building the model, we have to make sure all
    # initial values are updated according to their dependencies
    model.updateInitialValues(changedObjects);


from COPASI import *
import sys 

args = sys.argv[1:]
# EXPORT THE MODEL

assert CCopasiRootContainer.getRoot() != None
# create a datamodel
dataModel = CCopasiRootContainer.addDatamodel()
assert CCopasiRootContainer.getDatamodelList().size() == 1
# there must be 2 arguments passing to the script:
# 0 - model file name
# 1 - index of the parameter estimation iteration
if (len(args) == 1):
    filename = args[0]
    try:
        # load the model without progress report
        dataModel.loadModel(filename)
    except:
        print >> sys.stderr, "Error while loading the model from file named \"" + filename + "\"."
    model = dataModel.getModel()
    assert model != None
else:
    print >> sys.stderr, "Usage: python time_course cps_file iteration_index"

# RUN A WT TIME COURSE
time_course_task("wt_est")
# MAKE PTEN CONCENTRATION EQUAL TO 0 (PTEN KO)
# define a list of components in which you want to change initial concentation
# I want to to knock out pten -- I get its index by using findMetabByName method
comps = [model.findMetabByName("pten")]
# define a list of initial concentrations (must correspond to the list of components)
# in knock out there is no pten -- concentration equals 0
init_concs = [0]
set_init_conc(comps, init_concs)
# RUN A PTEN KO TIME COURSE
time_course_task("pten_est")
