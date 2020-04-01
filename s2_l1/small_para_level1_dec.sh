#!/bin/bash
#PBS -P u46
#PBS -W umask=017
#PBS -q express
#PBS -l walltime=0:15:00,mem=4GB,ncpus=1,jobfs=5GB,other=pernodejobfs
#PBS -l wd
#PBS -l storage=gdata/v10+scratch/v10+gdata/if87+gdata/fj7+scratch/fj7+scratch/u46+gdata/u46
# 1 job

echo 26 | xargs -P1 -n 1 ./small_level1_dec.sh

