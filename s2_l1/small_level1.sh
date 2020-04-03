#!/bin/bash

#!/bin/bash
#PBS -P u46
#PBS -W umask=017
#PBS -q express
#PBS -l walltime=0:05:00,mem=1GB,jobfs=1GB,other=pernodejobfs
#PBS -l wd
#PBS -l storage=gdata/v10+scratch/v10+gdata/if87+gdata/fj7+scratch/fj7+scratch/u46+gdata/u46
#PBS -l ncpus=1
# ncpus should be $END-$START+1


loc=$PWD
INPUT_DIR='/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/65S160E-70S165E/'
OUTPUT_DIR=$loc/yamltestdir

START=26
END=26
PARA="$(($END-$START+1))"
echo ncpus=$PARA    # set this value in line 10 above!
for i in $(seq  $START $END);
    # DAY_START DAY_END $INPUT_DIR $OUTPUT_DIR
    do echo 2019-12-$i 2019-12-$(($i+1)) $INPUT_DIR $OUTPUT_DIR ;
#done | xargs -P$PARA -n 4 ./repeat.sh
done | xargs -P$PARA -n 4 ./level1.sh
echo end

