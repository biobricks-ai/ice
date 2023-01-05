#!/usr/bin/env bash

# Script to unzip files

# Get local path
localpath=$(pwd)
echo "Local path: $localpath"

# Set download path
downloadpath="$localpath/download"
echo "Download path: $downloadpath"

# move in the download folder
cd $downloadpath

# Set list path
zipfile=(*zip)
echo "zip path: $zipfile"

# Unzip file
unzip $downloadpath/$zipfile -d $downloadpath
echo "zip path: $zipfile"

# delete zip file
rm $downloadpath/$zipfile

#unzip $zipfile -d $rawpath
echo "Unzip done"