#!/bin/bash
        echo "You are going to start   "
        echo "Welcome $(whoami)"
	echo -e "You are using $(lsb_release -d | cut -f2)"

# Prompt the user for a PATH
echo -e  "\n Please enter the path in which we need to keep the files. ii like ## / \ tmp ###   / \ home/john/Downloads  ###"
read local_path
# Confirm the entered path
echo -e "We are going to keep all the files in this /$local_path"

# Navigate to the specified directory
cd "/$local_path" || { echo "Failed to change directory to /$local_path"; exit 1; }



cd /$local_path 
ls
git clone https://github.com/panampunna/ArgoCD

cd /$local_path/ArgoCD
git checkout develop 
git pull
ls

cd /$local_path
 git clone https://github.com/panampunna/Helm-Kubectl-demo 

cd /$local_path/ArgoCD
ls 
# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")
echo -e "$SCRIPT_DIRi"
pwd
## echo  -e " Going to instrall Argo CD Demo   " 
ls "$SCRIPT_DIR/RUN_me_4_Argo-CD.sh"
./"$SCRIPT_DIR/RUN_me_4_Argo-CD.sh"

