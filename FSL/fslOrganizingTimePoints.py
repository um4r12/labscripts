import os

directory = "<directory>"
niftis = {}
time1 = []
time2 = []
for roots, dirs, files in os.walk(directory):
  for file in files:
	# ex. CC4-0_T1
	# The '-' delimiter can be changed to how files are labelled
        file = file.split("-")
        subject = file[0]
        if subject not in niftis:
            niftis[subject] = []
            niftis[subject].append("-".join(file))
        else:
            niftis[subject].append("-".join(file))

for key in niftis:
    # Subjects with only one scan are ignored
    # Checking to see if the subjects only had 2 scan points
    if len(niftis[key]) == 2:
	# In this case, the subjects month0 entry becomes the first timepoint
	# The month4 entry becomes the second timepoint
        time1.append(niftis[key][0])
   	time2.append(niftis[key][1]) 
    # Checking to see if the subjects only had 3 time points.
    # The first and last timepoint becomes time1 and time2, respectively
    elif len(niftis[key]) == 3:
	# In this case, the subjects month 0 entry becomes the first timepoint
	# The month8 becomes the second timepoint
        time1.append(niftis[key][1])
        time2.append(niftis[key][-1])
# Counts the number of subjects paired that had more than one scan acquired        
subjectsToProcess=0
for key in niftis:
    if len(niftis[key])>1:
        subjectsToProcess+=1
print(subjectsToProcess)
print("time1=("+" ".join(time1)+")")
print("time2=("+" ".join(time2)+")")
    
