#!/bin/bash

time1=(CC1-0_T1.nii CC2-0_T1.nii CC3-0_T1.nii)
time2=(CC1-8_T1.nii CC2-8_T1.nii CC3-4_T1.nii)
echo $time1
echo $time2
for ((i=0; i<${#time1[*]}; i++));
	 do 
	 folder="$(cut -d'_' -f1 <<<"${time1[i]}")"
	 echo siena time1/${time1[i]} time2/${time2[i]} -o $folder -B "-f 0.3";
done;
