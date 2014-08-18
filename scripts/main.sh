#!/bin/sh

# usage: bsub sh main.sh cps_file param_est_num best_obj_val_num
# where:
# cps_file -- the copasi model file
# param_est_num -- the number of parameter estimation iteration
# best_obj_val_num -- number of best objective values to consider

file=`ls *.cps`

CopasiSE -s $file $file
python ../../../scripts/time-course.py $file
Rscript ../../../scripts/plots.R
