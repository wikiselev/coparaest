## Summary

This script is dedicated to allow one to quickly and efficiently run a Copasi parameter estimation task on a computing cluster. Running 1000 parameter estimations in minutes and automatically summarising the results allows you to test a lot of hypothesis in a single day! Please enjoy and fork/pull request if you can see some obvious improvements!

## Prerequisites

1. [LSF](http://www-03.ibm.com/systems/platformcomputing/products/lsf/) or [SGE](http://www.oracle.com/us/products/tools/oracle-grid-engine-075549.html) cluster
2. [COPASI](http://www.copasi.org/), [perl](https://www.perl.org/) and [Bash](http://www.gnu.org/software/bash/) installed on the cluster.
3. [R](http://www.r-project.org/) itself and [gplots](http://cran.r-project.org/web/packages/gplots/index.html) and [ggplot2](http://ggplot2.org/) packages installed in it.

## Workflow:

1. Prepare your COPASI model file (see example in the **model** folder):
 * Setup Parameter Estimation task with the default Report
 * The Parameter Estimation Report file must be named **param-est-report.txt**

2. Copy your **.cps** file in the **model** directory (don't forget to remove all example files from it) together with experimental data file

3. From root directory run:

```{bash}
sh coparaest.sh n c
```

where **n** is number of parameter estimations and **c** is your cluster queuing system (**sge** or **lsf**). This will start **n** _parameter-estimation_ jobs, one _get-obj-values_ job and one _analyse-results_ job.

## Output
(after _analyse-results_ job is finished):

1. **out**, **err** - these folders contain cluster output files with its output and possible errors

2. **results/obj-values.txt** - this file contains indecies of parameter estimations (first column) sorted by their objective values (second column) with the best estimation in the first row.

3. **results/ind/estd-params.txt** - this file contains all estimated parameters for parameter estimation with **ind** index.

4. **results/model-correlations.pdf** - heatmap of correlations between models in the top 10 estimated parameter sets

5. **results/param-correlations.pdf** - heatmap of correlations between parameters in the top 10 estimated parameter sets

6. **results/param-correlations.pdf** - variance of parameters in the top 10 estimated parameter sets

Authors: [Vladimir Kiselev](www.genat.uk), Marija Jankovic

Acknowledgments: Martina Fröhlich, Nicolas Rodriguez
