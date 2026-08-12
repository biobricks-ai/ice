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

# define URL file
l_url=(
    # From <https://ice.ntp.niehs.nih.gov/downloads/DataonICE/> (2024-03-04)
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/ADME_Parameters.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Dermal_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Inhalation_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Acute_Oral_Toxicity.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Cancer.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Chemical_Functional_Use_Categories.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/DART.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Endocrine.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Exposure_Predictions.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Exposure_download_v1.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Eye_Irritation.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Irritation_Corrosion.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/Skin_Sensitization.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/DataonICE/cHTS2023_invitrodb35_20231006.zip"

    # From <https://ice.ntp.niehs.nih.gov/downloads/MOA/> (2024-03-04)
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/AcuteToxMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/AndrogenMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/CancerMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/CardioToxMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/CardioToxTMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/ChemcialQC.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/ChemicalQC.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/DARTMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/EstrogenMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/SteroidMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/ThyroidMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/Tox21MT.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/cHTSMOA.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/cHTSMT.xlsx"
    "https://ice.ntp.niehs.nih.gov/downloads/MOA/cHTSMT_ALL.xlsx"
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
