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

# define URL file -- 2023-08-18
l_url=(
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/ADME_Parameters.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Dermal_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Inhalation_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Oral_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Cancer.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Chemical_Functional_Use_Categories.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/DART.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Endocrine.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Exposure_Predictions.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Eye_Irritation.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Irritation.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Sensitization.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/cHTS2022_invitrodb34_20220302.zip"
)

# Use UnsafeLegacyRenegotiation: needed for some newer systems that disable it
# at the system level.
openssl_conf_eval='
cat /etc/ssl/openssl.cnf ;
echo Options = UnsafeLegacyRenegotiation
'

# Download files
for url in ${l_url[@]}; do
  OPENSSL_CONF=<(eval "$openssl_conf_eval" ) \
    wget $url --secure-protocol=TLSv1
done


echo "Download done."
