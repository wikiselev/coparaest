#!/bin/sh

cd scripts
python get-obj-values.py
perl merge-pdfs.pl
