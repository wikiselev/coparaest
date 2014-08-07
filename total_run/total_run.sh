#!/bin/sh

# usage: sh total_run.sh cps_file param_est_num best_obj_val_num
# where:
# cps_file -- the copasi model file
# param_est_num -- the number of parameter estimation iteration
# best_obj_val_num -- number of best objective values to consider

sh update_folders.sh

cd ../../../

cd 1/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 2/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 3/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 4/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 5/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 6/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 7/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 8/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 9/scripts/
bsub sh main.sh $1 $2 $3
cd ../../

cd 10/scripts/
bsub sh main.sh $1 $2 $3
cd ../../
