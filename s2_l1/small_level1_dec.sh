#!/bin/bash

WAGL_VERSION='5.3.1-gadi'

module use /g/data/v10/public/modules/modulefiles
module use /g/data/v10/private/modules/modulefiles

module load "wagl/${WAGL_VERSION}"

loc=$PWD

INPUT_DIR='/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/'
INPUT_DIR='/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/65S160E-70S165E/'

OUTPUT_DIR='/g/data/v10/AGDCv2/indexed_datasets/cophub/s2/s2_l1c_yamls'
OUTPUT_DIR=$loc/yamltestdir

START=2019-12-$1
END=2019-12-$(($1+1))

if [ "$END" = "2019-12-32" ]; then
    END=2020-01-01
fi

echo $START $END
s2-nci-processing generate-level1 --level1-root "$INPUT_DIR" --copy-parent-dir-count 1 --output-dir  "$OUTPUT_DIR" --start-date $START  --end-date $END
echo $INPUT_DIR $OUTPUT_DIR
env
