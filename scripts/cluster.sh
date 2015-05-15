#!/bin/sh

file=`ls *.cps`

CopasiSE -s $file $file

# the rest is optional:

# # 1. run a Time Course task with a new parameter set
# perl ../../../scripts/exe-check-box.pl $file
# CopasiSE model-tmp.cps

# # 2. plot the resulting time courses in pdf file
# sed 's/,/\t/g' experiment.* > experiment-for-plot.txt
# perl ../../../scripts/split-result-files.pl
# Rscript ../../../scripts/plots.R
