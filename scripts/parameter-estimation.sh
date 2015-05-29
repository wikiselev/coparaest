mkdir results/$LSB_JOBINDEX
cp model/* results/$LSB_JOBINDEX
cd results/$LSB_JOBINDEX
file=`ls *.cps`
/nfs/users/nfs_v/vk6/COPASI-4.15.95-Linux-64bit/bin/CopasiSE -s $file $file
