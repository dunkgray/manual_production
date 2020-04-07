#!/bin/bash

# Run this script in the cmd.  Execute_s2ard will start an NCI job

loc=$PWD
RUNDIR='/g/data/v10/work/s2_ard/pbs/level1'
S2L1DIR='/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/'
LOGDIR='/g/data/v10/work/s2_ard/wagl'
WORKDIR='/g/data/if87/workdir'
OUTPUT='/g/data/if87/datacube/002/S2_MSI_ARD/packaged'
ENV=$loc/definitive.env


#TEST=False
TEST=true

if [ "$TEST" = true ] ; then
  echo 'Using test directories'
  S2L1DIR='/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-11/20S125E-25S130E/'
  LOGDIR=$loc/logdir/
  RUNDIR=$LOGDIR
  WORKDIR=$loc/workdir/
  OUTPUT=$loc/pkgdir/
  ENV=$loc/definitive.env
fi

# for task do level2 or test
./execute_s2ard \
    --project u46 \
    --level1-dir $S2L1DIR \
    --workdir $WORKDIR \
    --logdir $LOGDIR \
    --output-dir $OUTPUT \
    --copy-parent-dir-count 1 \
    --file-mod-start 2019-11-04  \
    --file-mod-end 2019-11-05  \
    --task level2 \
    --rundir $RUNDIR \
    --env  $ENV
echo log directory $LOGDIR
echo output directory  $OUTPUT
echo input directory  $S2L1DIR

