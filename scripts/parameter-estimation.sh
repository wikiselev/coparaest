
JOB_INDEX=${LSB_JOBINDEX}
COPASI_BIN_PATH=/nfs/users/nfs_v/vk6/COPASI-4.15.95-Linux-64bit/bin/

if [ "x${LSB_JOBINDEX}" == "x" ]; then
    JOB_INDEX=${SGE_TASK_ID}
    COPASI_BIN_PATH=""
fi
 
mkdir results/$JOB_INDEX
cp model/* results/$JOB_INDEX
cd results/$JOB_INDEX
file=`ls *.cps`
${COPASI_BIN_PATH}CopasiSE -s $file $file
