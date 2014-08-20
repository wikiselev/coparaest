#!/bin/sh

rm -r results
mkdir results
mkdir results/param-estimations
cd results/param-estimations

for i in $(seq 1 $1)
do
	cp -r ../../model $i
	cd $i
	bsub sh ../../../scripts/cluster.sh
	echo "sh ../../../scripts/cluster.sh" | qsub -cwd -V
	cd ..
done

