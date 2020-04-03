#!/bin/bash

#!/bin/bash
#PBS -P u46
#PBS -W umask=017
#PBS -q express
#PBS -l walltime=0:00:30,mem=1GB,jobfs=1GB,other=pernodejobfs
#PBS -l wd
#PBS -l storage=gdata/v10+scratch/v10+gdata/if87+gdata/fj7+scratch/fj7+scratch/u46+gdata/u46
#PBS -l ncpus=1
# ncpus should be $END-$START+1
#env
./level1.sh 2019-12-26 2019-12-27 /g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/65S160E-70S165E/ /g/data/u46/users/dsg547/sandpit/manual_production/s2_l1/yamltestdir
