#!/bin/sh

cd scripts
python get-obj-values.pl
perl merge-pdfs.pl
