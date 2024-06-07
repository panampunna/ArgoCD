
#!/bin/bash
	echo "You are going to start   "
       	echo "Welcome $(whoami)"
        echo "You are using $(cat /etc/issue)"

#                # Check if the first argument (tag) is provided
#    if [ -z "$1" ]; then
#        echo "Error: Tag is required. Usage: Demo_argo-cd_Full_Install <tag>"
#        return 1
#    fi
#
#        a="$1"
#	echo "Tag is $1"
#
# Get the directory of the current script
SCRIPT_DIR=$(dirname "$0")
echo -e " SCRIPT_DIR ==   $SCRIPT_DIR"
pwd
## echo  -e " Going to instrall docker If not installed   " 
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/docker-install.sh"
## echo  -e "  Going to instrall kubectl If not installed  " 

"$SCRIPT_DIR/ArgoCD_Shell-Scripts/kubectl-install.sh"
## echo  -e "  Going to instrall minikube  If not installed  "
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/minikube-install.sh"

## echo  -e "  Going to instrall helm-install  If not installed  "
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/helm-install.sh"

        

	echo "2: Create Helm Charts : https://github.com/panampunna/Helm-Kubectl-demo  any change in this repo will deploy new build (( Public repo))  \n\n\n "

        echo "3: Create Argo-CD : and deploy :: https://hub.docker.com/repository/docker/vimaldevops/flask_app/general  new imange tags (( Public repo)) \n\n\n "

    ##########  Demo_argo-cd_step_1 $a
        echo "4:   GitOps to change Helm Char =  GitOpsCLI_Install  \n\n\n   "

  	echo  -e "  Going to run /ArgoCD_Shell-Scripts/GitOpsCLI_Install.sh  after 100 sec , DPKG lock will come so need to wait   "
	"$SCRIPT_DIR/ArgoCD_Shell-Scripts/are_all_pods_running.sh"
  	sleep 100 
	"$SCRIPT_DIR/ArgoCD_Shell-Scripts/GitOpsCLI_Install.sh"

## /home/john/Vimal/ArgoCD/ArgoCD_Shell-Scripts/gitopscli 
#  folder gitopscli will be created 
echo  -e "  Going to run /ArgoCD_Shell-Scripts/Install_Argo-CD_in_kubectl.sh  #################################################################################################  "
"$SCRIPT_DIR/ArgoCD_Shell-Scripts/Install_Argo-CD_in_kubectl.sh"
echo  -e "  Going to run  ArgoCD_Shell-Scripts/Add_repo_2_ArgoCD.sh ########################################################################################################## "

"$SCRIPT_DIR/ArgoCD_Shell-Scripts/Add_repo_2_ArgoCD.sh"


#       cd /home/john/Vimal
#       git clone https://github.com/panampunna/Helm-Kubectl-demo.git

    #    GitOpsCLI_deploy_values-yaml_demo-argo-helm-db "$a"
    #    GitOpsCLI_deploy_Chart-yaml_demo-argo-helm-db
    #    GitOpsCLI_deploy_values-yaml_demo-argo-helm-ui "$a"
    #    GitOpsCLI_deploy_Chart-yaml_demo-argo-helm-ui

     #   argo_Install_Only-kubectl_installed
  kubectl get service -n default
 


