#!/bin/sh
rm -r results out err
mkdir results out err

if [ $2 = "lsf" ]; then
   bsub -J "parameter-estimation[1-$1]" -o out/%I -e err/%I sh scripts/parameter-estimation.sh
   bsub -w "ended(parameter-estimation*)" -J "get-obj-values" -o out/get-obj-values -e err/get-obj-values perl scripts/get-obj-values.pl
   bsub -w "ended(get-obj-values)" -J "analyse-results" -o out/analyse-results -e err/analyse-results Rscript scripts/analyse-results.R
fi

if [ $2 = "sge" ]; then
    qsub -t 1-$1 -N "parameter-estimation" -cwd -V -o out/parameter-estimation -e err/parameter-estimation -b y sh scripts/parameter-estimation.sh
    qsub -hold_jid "parameter-estimation"  -N "get-obj-values" -cwd -V -o out/get-obj-values -e err/get-obj-values -b y perl scripts/get-obj-values.pl
    qsub -hold_jid "get-obj-values"  -N "analyse-results" -cwd -V  -o out/analyse-results -e err/analyse-results -b y Rscript scripts/analyse-results.R
fi
