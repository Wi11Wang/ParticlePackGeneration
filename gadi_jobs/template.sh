#!/bin/bash
#PBS -l ncpus=28
#PBS -l mem=128GB
#PBS -l jobfs=200GB
#PBS -q normalbw
#PBS -P w09
#PBS -l walltime=02:00:00
#PBS -l storage=gdata/w09
#PBS -l wd

module load python3/3.10.4
source /g/data/w09/bw5016/python-packages/hons_3.10.4/bin/activate
