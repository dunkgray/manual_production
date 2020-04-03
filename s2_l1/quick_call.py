#!/usr/bin/env python3

from eodatasets.prepare.s2_prepare_cophub_zip import _process_datasets
from pathlib import Path
from datetime import datetime

yaml_output_dir = "/g/data/u46/users/dsg547/sandpit/manual_production/s2_l1/yamltestdir/65S160E-70S165E"
#level1_dataset = Path("/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/65S160E-70S165E/S2B_MSIL1C_20191225T223339_N0208_R029_T57DWF_20191225T233328.zip")
level1_dataset = Path("/g/data/fj7/Copernicus/Sentinel-2/MSI/L1C/2019/2019-12/65S160E-70S165E/S2B_MSIL1C_20191225T223339_N0208_R029_T57DWG_20191225T233328.zip")
checksum = False
start_date = datetime.strptime("2019-12-26", "%Y-%m-%d")
_process_datasets(yaml_output_dir, (level1_dataset, ), checksum, start_date)
