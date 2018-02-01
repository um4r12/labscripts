#!/bin/bash
# Substitute subjects in time1 and time2 with the file of subjects who will be processed #
# The index of time1 and time2 should correspond to the same subject, at their respective scan time. #
# Script must be placed within the same directory that contains the files to be processed. #

echo "Running siena automated script..."
echo ""

time1=(CC1-0_T1.nii CC2-0_T1.nii CC4-0_T1.nii CC5-0_T1.nii CC6-0_T1.nii CC7-0_T1.nii CC8-0_T1.nii CC9-0_T1.nii CP11-0_T1.nii CP2-0_T1.nii CP3-0_T1.nii CP7-0_T1.nii CP8-0_T1.nii EC1-0_T1.nii EC10-0_T1.nii EC11-0_T1.nii EC12-0_T1.nii EC13-0_T1.nii EC14-0_T1.nii EC15-0_T1.nii EC2-0_T1.nii EC4-0_T1.nii EC5-0_T1.nii EC6-0_T1.nii EC7-0_T1.nii EC8-0_T1.nii EC9-0_T1.nii EP1-0_T1.nii EP10-0_T1.nii EP11-0_T1.nii EP12-0_T1.nii EP13-0_T1.nii EP14-0_T1.nii EP15-0_T1.nii EP16-0_T1.nii EP17-0_T1.nii EP19-0_T1.nii EP2-0_T1.nii EP20-0_T1.nii EP22-0_T1.nii EP23-0_T1.nii EP3-0_T1.nii EP4-0_T1.nii EP5-0_T1.nii EP6-0_T1.nii EP7-0_T1.nii EP8-0_T1.nii EP9-0_T1.nii MC1-0_T1.nii MC2-0_T1.nii MC3-0_T1.nii MC4-0_T1.nii MC5-0_T1.nii MC6-0_T1.nii MC7-0_T1.nii MP1-0_T1.nii MP10-0_T1.nii MP11-0_T1.nii MP2-0_T1.nii MP3-0_T1.nii MP4-0_T1.nii MP5-0_T1.nii MP7-0_T1.nii MP8-0_T1.nii MP9-0_T1.nii TC1-0_T1.nii TC12-0_T1.nii TC2-0_T1.nii TC3-0_T1.nii TC8-0_T1.nii TC9-0_T1.nii TP1-0_T1.nii TP10-0_T1.nii TP12-0_T1.nii TP13-0_T1.nii TP14-0_T1.nii TP15-0_T1.nii TP16-0_T1.nii TP19-0_T1.nii TP2-0_T1.nii TP20-0_T1.nii TP21-0_T1.nii TP22-0_T1.nii TP3-0_T1.nii TP5-0_T1.nii TP6-0_T1.nii TP9-0_T1.nii VC1-0_T1.nii VC2-0_T1.nii VC3-0_T1.nii VC5-0_T1.nii VP1-0_T1.nii VP2-0_T1.nii VP3-0_T1.nii VP4-0_T1.nii VP5-0_T1.nii)

time2=(CC1-8_T1.nii CC2-8_T1.nii CC4-4_T1.nii CC5-4_T1.nii CC6-8_T1.nii CC7-4_T1.nii CC8-8_T1.nii CC9-4_T1.nii CP11-4_T1.nii CP2-4_T1.nii CP3-4_T1.nii CP7-4_T1.nii CP8-8_T1.nii EC1-8_T1.nii EC10-8_T1.nii EC11-8_T1.nii EC12-8_T1.nii EC13-8_T1.nii EC14-8_T1.nii EC15-8_T1.nii EC2-8_T1.nii EC4-8_T1.nii EC5-8_T1.nii EC6-8_T1.nii EC7-8_T1.nii EC8-4_T1.nii EC9-8_T1.nii EP1-8_T1.nii EP10-4_T1.nii EP11-4_T1.nii EP12-8_T1.nii EP13-8_T1.nii EP14-4_T1.nii EP15-8_T1.nii EP16-4_T1.nii EP17-8_T1.nii EP19-4_T1.nii EP2-4_T1.nii EP20-4_T1.nii EP22-4_T1.nii EP23-4_T1.nii EP3-8_T1.nii EP4-8_T1.nii EP5-4_T1.nii EP6-4_T1.nii EP7-8_T1.nii EP8-8_T1.nii EP9-8_T1.nii MC1-8_T1.nii MC2-8_T1.nii MC3-8_T1.nii MC4-8_T1.nii MC5-8_T1.nii MC6-4_T1.nii MC7-4_T1.nii MP1-8_T1.nii MP10-4_T1.nii MP11-4_T1.nii MP2-4_T1.nii MP3-8_T1.nii MP4-8_T1.nii MP5-8_T1.nii MP7-8_T1.nii MP8-8_T1.nii MP9-8_T1.nii TC1-8_T1.nii TC12-4_T1.nii TC2-8_T1.nii TC3-8_T1.nii TC8-4_T1.nii TC9-4_T1.nii TP1-8_T1.nii TP10-8_T1.nii TP12-8_T1.nii TP13-8_T1.nii TP14-4_T1.nii TP15-8_T1.nii TP16-8_T1.nii TP19-4_T1.nii TP2-8_T1.nii TP20-8_T1.nii TP21-8_T1.nii TP22-4_T1.nii TP3-4_T1.nii TP5-8_T1.nii TP6-4_T1.nii TP9-8_T1.nii VC1-8_T1.nii VC2-8_T1.nii VC3-8_T1.nii VC5-4_T1.nii VP1-8_T1.nii VP2-8_T1.nii VP3-8_T1.nii VP4-8_T1.nii VP5-4_T1.nii)


for ((i=0; i<${#time1[*]}; i++));
	 do
	# Splits at the '-' as that is how our files were labelled. #
	# Could change that to whichever delimiter was used. #
	# f1 refers to the first part of the split. #
		# eg.) CC1-0_T1.nii would return [CC1, 0_T1.nii]. #
	# Could change f1 to f2 ... f(n), depending on where the delimiter was placed. #
	# This will be used to create subject folders. #
	 folder="$(cut -d'-' -f1 <<<"${time1[i]}")"
	echo "Processing $folder ..."	 
	echo siena ${time1[i]} ${time2[i]} -o $folder -B "-f 0.3";
	# Executes command to terminal for each subject.
	siena ${time1[i]} ${time2[i]} -o $folder -B "-f 0.3";
	echo "Completed $folder ..."
	echo "";
done;
echo "All subjects have been processed."


