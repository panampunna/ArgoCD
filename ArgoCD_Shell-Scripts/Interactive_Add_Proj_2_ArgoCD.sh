#!/bin/bash
echo -e "1_We are going to Add New Project / Repo to Argo-CD "  
echo -e "2_We need the repo URL which we need to add, It will be added to ###argocd repo add ### 🍔🍟🍕🥪🥙 "

# Prompt the user for a URL
echo -e  "\n Please enter the repo URL:  for adding  "
read repo_url

# Display the URL
echo -e "The URL you entered is: $repo_url"

echo -e " argocd repo add $repo_url "
 argocd repo add $repo_url

echo -e "\n 3_List Added Repo by ###argocd repo list ####  \n  " 
argocd repo list

echo -e "4_if you want to delete any repo from this list  try == ###: argocd repo rm  https://github.com/panampunna/Chirakon.git  ### " 
# Available Commands: 
# add         Add git repository connection parameters
# get         Get a configured repository by URL
# list        List configured repositories
# rm          Remove repository credentials
##################################################
echo -e "5_Now we need to add the Application to Argo CD.    "

echo -e "6_List of things we needed for adding a Application to Argo CD  \n 1) Application_Name , \n 2) Repo_Name. \n 3) Repo_path, \n 4) Dest_Server, \n 5) Dest_Namespace, \n  " 

# Prompt the user for the Application_Name
echo -e  "\n Please enter the Application_Name:    "
read Application_Name

# Display the URL
echo -e "The Application_Name entered is: $Application_Name"
################################################################
echo -e  "\n Please enter the Repo_Name:    "
read Repo_Name

# Display the URL
echo -e "The Repo_Name  entered is: $Repo_Name"
##########################################################
echo -e  "\n Please enter the Repo_path:    "
read Repo_path

# Display the URL
echo -e "The Repo_path entered is: $Repo_path"
##########################################################
echo -e  "\n Please enter the Dest_Server:  https://kubernetes.default.svc  OR Cluster URL "
read Dest_Server
# Set default value if none provided
Dest_Server=${Dest_Server:-https://kubernetes.default.svc}
# Display the URL
echo -e "The Dest_Server entered is: $Dest_Server"
##########################################################
echo -e  "\n Please enter the Dest_Namespace (default: default):    "
read Dest_Namespace
# Set default value if none provided
Dest_Namespace=${Dest_Namespace:-default}
# Display the Dest_Namespace
echo -e "The Dest_Namespace entered is: $Dest_Namespace"
##########################################################

  argocd app create $Application_Name  --repo  $Repo_Name  --path $Repo_path --dest-server $Dest_Server --dest-namespace $Dest_Namespace







#
#
#echo -e "\n 🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🥥🥝🥨🥖🍞🥯🥐🍠🥔🥕🌽🌶 🥒🥬🥦🥑🍆🍅🧀🥚🍳🥞🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🌮🍥🍘🍚🥟🍤🍣🍛🍲🍜🍝🥫🥘🥗🌯🥠🥮🍢🍡🍨🍦🥧🧁🧁🍰🎂🍮
#🍭🍬🍫🍿🥃🍷🥂🍻🍶🥤🍼🍯🥜🌰🍪🍩🍸🍹🍾🍴🍽 🥣🧂           \n    Starting  Add_repo_2_ArgoCD.sh  ##############   \n  "
#
#
#echo -e " to add repo to argo    argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git "
#        argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git
#        echo -e "  argocd repo list "
#        argocd repo list
#
#
#	        echo -e " argocd app create argocd-app-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
#        argocd app create demo-argo-helm-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default
#        argocd app get demo-argo-helm-ui
#        argocd app sync demo-argo-helm-ui
#        argocd app list
#
####################################################################
#        echo -e "###🐆🦓🦍🐘🦛🦏🐪🐫🦒🦘🐃🐂🐄🐎🐏🐅🦝🐇🕊 🦢🦜🦃🦚🐓🐈🐩🐕🦌🐐🐿   \n     "
#
############################
#              echo -e " argocd app create argocd-app-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-db/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
#        argocd app create demo-argo-helm-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-db/ --dest-server https://kubernetes.default.svc --dest-namespace default
#        argocd app get demo-argo-helm-db
#        argocd app sync demo-argo-helm-db
#        argocd app list
#
#        echo -e " argocd  UI  ################################### n\\n "
#        chromium-browser http://localhost:8080/login  &
#        minikube tunnel &
#		####        kubectl get service -A &
#
#
