echo -e "\n ##############               Starting  Add_repo_2_ArgoCD.sh  ##############  \n \n  "


echo -e " to add repo to argo    argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git "
        argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git
        echo -e "  argocd repo list "
        argocd repo list


	        echo -e " argocd app create argocd-app-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
        argocd app create demo-argo-helm-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default
        argocd app get demo-argo-helm-ui
        argocd app sync demo-argo-helm-ui
        argocd app list

###################################################################
        echo -e "######################### \n     "

###########################
              echo -e " argocd app create argocd-app-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-db/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
        argocd app create demo-argo-helm-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-db/ --dest-server https://kubernetes.default.svc --dest-namespace default
        argocd app get demo-argo-helm-db
        argocd app sync demo-argo-helm-db
        argocd app list

        echo -e " argocd  UI  ################################### n\\n "
        chromium-browser http://localhost:8080/login  &
        minikube tunnel &
		####        kubectl get service -A &


