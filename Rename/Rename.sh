#! /bin/bash
# Author: xtellaris
# Aim: Rename ASS file for correspound video series.

i=0;

for $file in $(ls ./*.ass ./*.ASS); 
do
	i=$i+1;
	echo -e "\e[1;33mFound $i ASS files ! \e[0m\n"
done
