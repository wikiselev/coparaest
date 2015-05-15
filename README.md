Prerequisites:

1. COPASI installed on the cluster (or COPASI module loaded)
2. bash and perl installed on the cluster (should be by default)

Workflow:

1. Prepare your COPASI model file (see example in the model folder):
 * Setup Parameter Estimation task with the default Report
 * The Parameter Estimation Report file must be named 'param-est-report.txt'

2. Copy your ".cps" file in the 'model' directory (don't forget to remove all example files from it) together with experimental data file
3. From root directory run:

```bash
sh run.sh n c
```

where n is number of parameter estimations (must be > 10) and c is your cluster queuing system ('sge' or 'lsf'). This will start n jobs on your cluster. All output will appear in 'results' folder

4. Wait until all jobs are finished and then run:

```bash
perl get-obj-values.pl
```

This will summarize all estimation objectives values in 'results/obj-values.txt'.

Authors: Vladimir Kiselev, Marija Jankovic

Acknowledgments: Martina Fröhlich
