#! /bin/bash
# Author: xtellaris@github.com

# Use $1 as WorkFolder
if [ ! -d "$1" ]; then
	echo -e "\e[40;31mError in WorkFolder! \e[0m";
	exit;
fi
WorkFolder="$1";
# Specify OutFolder
mkdir $WorkFolder/OUTPUT
OutFolder="$WorkFolder/OUTPUT"

# File_AN=files' absolute path and name
# File_BN=files' base name
for File_AN in ${WorkFolder}/*
do
	if [ -f $File_AN ]; then
		File_BN=$(basename $File_AN);
		File_OUT="$OutFolder/$File_BN.mp4";
		ffmpeg -hwaccel qsv -ss 00:00:06.35 -i "$File_AN" -c:v hevc_nvenc -preset slow -profile:v main -b:v 1000K -c:a libfdk_aac -b:a 64K -vf eq=brightness=-0.03 "$File_OUT";	
	fi
done
