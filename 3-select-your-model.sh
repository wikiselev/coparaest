#!/bin/sh

# usage="$(basename "$0") [-d] [-n] -- COPASI parallel parameter estimator

# where:
#     -d  name of a directory with a model 'cps' file and experimental data which is to be fitted by the model (default: model)
#     -n  number of parameter estimations (default: 100)"

# seed=100
# while getopts ':dn:' option; do
#   case "$option" in
#     d) echo "$usage"
#        exit
#        ;;
#     n) seed=$OPTARG
#        ;;
#     :) printf "missing argument for -%s\n" "$OPTARG" >&2
#        echo "$usage" >&2
#        exit 1
#        ;;
#    \?) printf "illegal option: -%s\n" "$OPTARG" >&2
#        echo "$usage" >&2
#        exit 1
#        ;;
#   esac
# done
# shift $((OPTIND - 1))

rm -r model-result
cp -r results/param-estimations/$1 model-result
