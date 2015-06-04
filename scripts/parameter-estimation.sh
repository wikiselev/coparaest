JOB_INDEX=${LSB_JOBINDEX}

if [ "x${LSB_JOBINDEX}" == "x" ]; then
    JOB_INDEX=${SGE_TASK_ID}
fi

mkdir results/$JOB_INDEX
cp model/* results/$JOB_INDEX
cd results/$JOB_INDEX
file=`ls *.cps`
CopasiSE -s $file $file
