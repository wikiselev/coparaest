Prerequisites:

1. R installed on the cluster (or R module loaded)
2. reshape2 and ggplot2 CRAN packages are installed in R
3. COPASI installed on the cluster (or COPASI module loaded)
4. bash and perl installed on the cluster (should be by default)

Workflow:

1. Prepare your COPASI model file (see example in the model folder):
 * Setup Parameter Estimation task with the default Report
 * The Parameter Estimation Report file must be named 'param-est-report.txt'
 * All experiments (separated by an empty line) should be in one file called "experiment.txt" in the same folder as your COPASI model file; time must be named "Time"
 * Setup Parameter Scan task with Time course task and Scan corresponding to your experimental data - this is needed for producing time courses of all experimental conditions
 * For Parameter Scan use a Time course report in which columns correspond to model time and concentrations of all model species
 * The Parameter Scan Report file must be named 'param-scan-report.txt'

2. Copy your model .cps file in the 'model' directory (don't forget to remove example files from it) together with 'experiment.txt' file
3. From root directory run 'sh 1-run-coparaest.sh n c', where n is number of parameter estimations (must be > 10) and c is your cluster queuing system ('sge' or 'lsf'). This will start n jobs on your cluster. All output will appear in 'results' folder
4. Wait until all n jobs are finished and then run 'sh 2-summarise-results.sh'. This will summarize all estimation objectives values in 'results/obj-values.txt' and also produce 'plots-top-10-obj-vals.pdf' file in the same folder. This file contains time courses plots for the best 10 objective values
5. Looking at the plots choose the best fit and obtain the model file with necessary parameter values by 'sh 3-select-your-model.sh i', where i is the index of the best fit estimation

Authors: Vladimir Kiselev, Marija Jankovic

Acknowledgments: Martina Froehlich
