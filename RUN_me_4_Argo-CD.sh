


echo "You are going to start   "


#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")

# Call other scripts using relative paths
# If the other scripts are in the same directory
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/docker-install.sh"

# If the other scripts are in a subdirectory called "scripts"
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/kubectl-install.sh"

# If the other scripts are in a parent directory
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/minikube-install.sh"


