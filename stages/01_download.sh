#!/usr/bin/env bash
# Script to download files

# Get local [ath]
localpath=$(pwd)
echo "Local path: $localpath"

# Create the list directory to save list of remote files and directories
downloadpath="$localpath/download"
echo "Download path: $downloadpath"
mkdir -p $downloadpath
cd $downloadpath;

# define URL file -- 2022-03-23
l_url=(
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/ADME_Parameters.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Dermal_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Inhalation_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Oral_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Cancer.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/DART.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Endocrine.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Eye_Irritation.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Irritation.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Sensitization.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/cHTS2022_invitrodb34_20220302.zip"
)


# Download files
for url in ${l_url[@]}; do
  wget $downloadpath $url --secure-protocol=TLSv1
done


echo "Download done."