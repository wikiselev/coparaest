#!/bin/sh
rm -r results out err
mkdir results out err

if [ $2 = "lsf" ]; then
   bsub -J "parameter-estimation[1-$1]" -o out/%I -e err/%I sh scripts/parameter-estimation.sh
   bsub -w "ended(parameter-estimation*)" -J "get-obj-values" -o out/get-obj-values -e err/get-obj-values perl scripts/get-obj-values.pl
   bsub -w "ended(get-obj-values)" -J "analyse-results" -o out/analyse-results -e err/analyse-results Rscript scripts/analyse-results.R
fi

if [ $2 = "sge" ]; then
    echo "sh scripts/parameter-estimation.sh" | qsub -t 1-$1 -N "parameter_estimation" -cwd -V -o "out/parameter-estimation-${SGE_TASK_ID}" -e "err/parameter-estimation-${SGE_TASK_ID}"
    echo "perl scripts/get-obj-values.pl" | qsub -hold_jid "parameter_estimation"  -N "get_obj_values" -cwd -V -o out/get-obj-values -e err/get-obj-values
    echo "Rscript scripts/analyse-results.R" | qsub -hold_jid "get_obj_values"  -N "analyse_results" -cwd -V  -o out/analyse-results -e err/analyse-results
fi
