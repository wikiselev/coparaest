#! /usr/bin/env python

import sys, os, re, operator

os.chdir('../results/param-estimations')

# filter folders which start with digits - these are the param. est. result folders
regex = re.compile('\d.*')
dirs = []
for d in os.listdir('.'):
    name = regex.match(d)
    if name:
        dirs.append(name.group(0))

objs = []
params = []

for d in dirs:
    f = open(d + "/" + "param-est-report.txt", 'r')
    res = f.read()
    f.close()
    res = res.split('\n\n')
    # exctracting important text blocks from parameter estimation report
    obj = res[8]
    param = res[9]
    # extracting objective values from each parameter estimation iteration and write
    # them into 'best_objs.txt' file
    obj = obj.split('\t')[1]
    obj = float(obj.split('\n')[0])
    objs.append(obj)
    params.append(param)

# sort objective values
ind = range(1, len(objs) + 1)
dic = dict(zip(ind, objs))
objs = sorted(dic.iteritems(), key=operator.itemgetter(1))

# write all objective values in a file together with their indexes 
ind = []
f = open("../obj-values.txt", 'w')
for tup in objs:
    print >>f, tup[0], '\t', tup[1]
    ind.append(tup[0])
f.close()

# extracting estimated parameters from each parameter estimation iteration and
# write them into a file
f = open("../param-values.txt", 'w')

for i in ind:
    pset = params[i - 1]
    pset = pset.split('\n')[1:]
    for item in pset:
        print >>f, item.split('\t')[1], '\t', item.split('\t')[2]
    print >>f, '\n'

f.close()
