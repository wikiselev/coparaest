#! /usr/bin/env python

# TODO: none
#
# Usage: python best_obj_value.py best_obj_number
# where:
# best_obj_number - number of best objective values that should be taken into
# account
#
# This script does the following sequence of tasks:
# 1. reads param_est_report.txt file
# 2. extract best [best_obj_number] objective values
# 3. write them into best_obj_values.txt file
# 4. extract corresponding parameters to these objective values
# 5. write these parameters into best_param_values.txt
#
# Author: Vladimir Kiselev

import sys
import operator

obj_val_num = sys.argv[1]

f = open("param_est_report.txt", 'r')
blocks = f.read()
f.close()
blocks = blocks.split('\n\n')

# exctracting important text blocks from parameter estimation report

obj_values = blocks[8::15]
est_params = blocks[9::15]

# extracting objective values from each parameter estimation iteration and write
# them into 'best_obj_values.txt' file

i = 0
for value in obj_values:
    value = value.split('\t')[1]
    obj_values[i] = float(value.split('\n')[0])
    i = i + 1

obj_index = range(1, len(obj_values) + 1)
obj_dict = dict(zip(obj_index, obj_values))
sorted_obj = sorted(obj_dict.iteritems(), key=operator.itemgetter(1))
sorted_obj = sorted_obj[:int(obj_val_num)]

best_obj = []
f = open("best_obj_values.txt", 'w')

for tup in sorted_obj:
    print >>f, tup[0], '\t', tup[1]
    best_obj.append(tup[0])

f.close()

# extracting estimated parameters from each parameter estimation iteration and
# write them into 'best_param_values.txt' file

f = open("best_param_values.txt", 'w')
for i in best_obj:
    pset = est_params[i - 1]
    pset = pset.split('\n')[1:]
    for item in pset:
        print >>f, item.split('\t')[1], '\t', item.split('\t')[2]
    print >>f, '\n'

f.close()
