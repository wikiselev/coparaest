#!/bin/sh

cd ../../output/wt_est/
rm *
cd ../pten_est/
rm *

cd ../../scripts/results/
rm *

cd ..
rm param_est_report.txt
rm best_param_values.txt
rm best_obj_values.txt
rm .RData
rm plot_results.Rout

cd ../../

rm -r 1
rm -r 2
rm -r 3
rm -r 4
rm -r 5
rm -r 6
rm -r 7
rm -r 8
rm -r 9
rm -r 10

rm fit_models/*

rm total_results/pips*
rm total_results/1/*
rm total_results/2/*
rm total_results/3/*
rm total_results/4/*
rm total_results/5/*
rm total_results/6/*
rm total_results/7/*
rm total_results/8/*
rm total_results/9/*
rm total_results/10/*

cp -r 1_reference 1

cp -r 1 2
cp -r 1 3
cp -r 1 4
cp -r 1 5
cp -r 1 6
cp -r 1 7
cp -r 1 8
cp -r 1 9
cp -r 1 10