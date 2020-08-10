#! /bin/bash
# Author: xtellaris
# Aim: Rename ASS file for correspound video series.

TARGET_dir=$1;
i=0;
for file in "$TARGET_dir"/*.ass ; 
do
	i=$(($i+1));
	# echo -e "\e[1;33mFound $i ASS files ! \e[0m";
	echo $file;
done
