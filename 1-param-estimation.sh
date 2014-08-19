#!/bin/sh

rm -r results
mkdir results
mkdir results/param-estimations
cd results/param-estimations

for i in $(seq 1 $2)
do
	cp -r ../../$1 $i
	cd $i
	bsub sh ../../../scripts/cluster.sh
	cd ..
done

