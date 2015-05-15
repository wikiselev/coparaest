#!/bin/sh

rm -r results
mkdir results
mkdir results/param-estimations
cd results/param-estimations

for i in $(seq 1 $1)
do
  cp -r ../../model $i
	cd $i
	if [ $2 = "lsf" ]; then
	   bsub -o out -e err sh ../../../scripts/cluster.sh
	fi
	if [ $2 = "sge" ]; then
   		echo "sh ../../../scripts/cluster.sh" | qsub -cwd -V -o out -e err
   	fi
	cd ..
done
