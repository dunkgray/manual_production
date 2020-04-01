#!/bin/bash
#PBS -P u46
#PBS -W umask=017
#PBS -q normal
#PBS -l walltime=6:00:00,mem=4GB,ncpus=18,jobfs=50GB,other=pernodejobfs
#PBS -l wd
#PBS -l storage=gdata/v10+scratch/v10+gdata/if87+gdata/fj7+scratch/fj7+scratch/u46+gdata/u46

# 18 jobs

for i in {14..31}; do echo $i; done | xargs -P18 -n 1 ./level1_dec.sh

