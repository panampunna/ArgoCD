
#!/bin/bash
	echo "You are going to start   "
       	echo "Welcome $(whoami)"
        echo "You are using $(cat /etc/issue)"

                # Check if the first argument (tag) is provided
    if [ -z "$1" ]; then
        echo "Error: Tag is required. Usage: Demo_argo-cd_Full_Install <tag>"
        return 1
    fi

        a="$1"
	echo "Tag is $1"
# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")
echo -e "$SCRIPT_DIRi"
pwd
## echo  -e " Going to instrall docker If not installed   " 
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/docker-install.sh"
## echo  -e "  Going to instrall kubectl If not installed  " 

"$SCRIPT_DIR/ArgoCD_Shell-Scripts/kubectl-install.sh"
## echo  -e "  Going to instrall minikube  If not installed  "
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/minikube-install.sh"

## echo  -e "  Going to instrall helm-install  If not installed  "
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/helm-install.sh"









