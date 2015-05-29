## Prerequisites

1. [LSF](http://www-03.ibm.com/systems/platformcomputing/products/lsf/) or [SGE](http://www.oracle.com/us/products/tools/oracle-grid-engine-075549.html) cluster
2. [COPASI](http://www.copasi.org/), [R](http://www.r-project.org/), [perl](https://www.perl.org/) and [Bash](http://www.gnu.org/software/bash/) installed on the cluster.

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


Authors: Vladimir Kiselev, Marija Jankovic

Acknowledgments: Martina Fröhlich
