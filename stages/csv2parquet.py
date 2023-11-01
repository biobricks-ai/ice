import pandas as pd
import sys
import pyarrow as pyarrow
import fastparquet as fastparquet
from os import path, listdir, mkdir
import shutil

InDirName = sys.argv[1]
OutDirName = sys.argv[2]

#create folder -> parquet split in 1 Gb
try:
    mkdir(OutDirName)
except:
    shutil.rmtree(OutDirName)
    mkdir(OutDirName)

# navigate in folder and retieve only table of interest
l_files_download = listdir(InDirName)
for file_download in l_files_download:
    if file_download[-4:] == "xlsx":
        xlsx = pd.ExcelFile("%s/%s"%(InDirName, file_download))
        l_sheet = xlsx.sheet_names
        for sheet in l_sheet:
            if sheet.lower() != "notes":
                df = pd.read_excel("%s/%s"%(InDirName, file_download), sheet_name=sheet, dtype=str) # make a convert in str for all col - error when first row is NA
                df.to_parquet("%s/%s_%s.parquet"%(OutDirName, file_download[:-5], sheet.replace(" ", "_")))
    elif file_download[-3:] == "txt":
        df = pd.read_csv("%s/%s"%(InDirName, file_download), sep = "\t", encoding='unicode_escape', low_memory=False, on_bad_lines='skip')
        df.to_parquet("%s/%s.parquet"%(OutDirName, file_download[:-4]))

print(f"csv2parquet: Converting file {InDirName}")
