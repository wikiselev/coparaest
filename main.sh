#!/bin/sh

# usage: bsub sh main.sh cps_file param_est_num best_obj_val_num
# where:
# cps_file -- the copasi model file
# param_est_num -- the number of parameter estimation iteration
# best_obj_val_num -- number of best objective values to consider

for i in $(seq 1 $2)
do
	CopasiSE -s $1 $1
	python time_course.py $1 $i
done

python best_obj_value.py $3

/nfs/research2/luscombe/kathi/programmes/R-2.15.1/bin/Rscript plot_results.R
