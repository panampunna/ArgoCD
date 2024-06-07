#!/bin/bash
        echo "You are going to start   "
        echo "Welcome $(whoami)"
	echo -e "You are using $(lsb_release -d | cut -f2)"

	sudo apt  upgrade -y 

# Get the current working directory
local_path=$(pwd)

# Prompt the user for confirmation
echo -e "\n  We are going to download and deploy ArgoDC in $local_path, "


# Navigate to the specified directory
cd "/$local_path" || { echo "Failed to change directory to /$local_path"; exit 1; }

echo "LL 31"

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

