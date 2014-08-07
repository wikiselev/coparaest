0. cd to parameter_estimation/1_reference/scripts/total_run/

1. Run the parameter estimation: 

sh total_run.sh cps_file param_est_num best_obj_val_num

# where:
# cps_file -- the copasi model file
# param_est_num -- the number of parameter estimation iteration
# best_obj_val_num -- number of best objective values to consider
#
# I usually do the following:
# sh total_run.sh model.cps 100 3

2. Collect the results in a separate folder:

sh total_results.sh

3. Synchronise the whole param_estimation_results folder (Sync Remote -> Local)

4. Compile combine_total_results.tex file and combine_total_results_rest.tex in 
the total_run folder. You will get combine_total_results_rest.pdf and 
combine_total_results.pdf in the total_run folder. They contain all the necessary
plots to check your parameter estimation.

5. Using those plots choose the best parameter estimation and remember:
	folder_num - in which parameter estimation folder (1-10) it is;
    set_num - what is the parameter set number you are interested in;

6. Create a model with best parameter estimation parameters:

bsub python get_fit_model.py folder_num param set_num

7. Synchronise the fit_models folder (Sync Remote -> Local), import the files in
it to CopasiUI and run them -- this is your best fit results!!!
