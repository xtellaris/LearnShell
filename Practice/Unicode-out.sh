#! /bin/bash

for i1 in {0..9}{A..F}
do 
	for i2 in {0..9}{A..F}
	do
		for i3 in {0..9}{A..F}
		do 
			for i4 in {0..9}{A..F}
			do 
				echo -ne \\u$i1$i2$i3$i4
			done
		done
	done
done
