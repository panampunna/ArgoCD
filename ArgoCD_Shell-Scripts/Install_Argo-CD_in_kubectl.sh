###argo_Install_Only-kubectl_installed () {
      	echo -e " Line 4 ::  File =Install_Argo-CD_in_kubectl.sh  "
	kubectl create namespace argocd
        kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
        echo -e " Line 7 ::  🍇  🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑  , Check all pods are running    \n "
      echo -e  "wget https://raw.githubusercontent.com/panampunna/ArgoCD/develop/ArgoCD_Shell-Scripts/are_all_pods_running.sh"
	wget https://raw.githubusercontent.com/panampunna/ArgoCD/develop/ArgoCD_Shell-Scripts/are_all_pods_running.sh
	sudo chmod +x are_all_pods_running.sh
       "./are_all_pods_running.sh"

        echo -e " \n\n  kubectl get pods -A  🍇  🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑   "
        kubectl get pods -A
        echo -e " \n\n  kubectl get services -A | grep argocd-server \n\n "
        kubectl get services -A | grep argocd-server

        echo -e "\n\n   kubectl port-forward svc/argocd-server -n argocd 8080:443 &   "
        kubectl port-forward svc/argocd-server -n argocd 8080:443 &
        echo -e "\n\n    kubectl pod name that run argocd-server- POD  🐆🦓🦍🐘🦛🦏🐪🐫🦒🦘🐃🐂🐄🐎🐏🐅🦝🐇🕊🦢🦜🦃🦚🐓🐈🐩🐕🦌🐐🐿  \n  "
        kubectl get pods -n argocd -l "app.kubernetes.io/name=argocd-server" -o jsonpath="{.items[0].metadata.name}"
        export ARGOCD_SERVER_POD_NAME=$(kubectl get pods -n argocd -l "app.kubernetes.io/name=argocd-server" -o jsonpath="{.items[0].metadata.name}")
        echo -e "$ARGOCD_SERVER_POD_NAME    \n\n\n "
        echo -e " argocd  PASSWORD for admin user from POD  == argocd admin initial-password -n argocd  \n ##################################### "
        kubectl -n argocd exec -it $ARGOCD_SERVER_POD_NAME -- argocd admin initial-password
	echo -e " ##################################################################"
        echo -e " sleep 10 🐆🦓🦍🐘🦛🦏🐪🐫🦒🦘🐃🐂🐄🐎🐏🐅🦝🐇🕊🦢🦜🦃🦚🐓🐈🐩🐕🦌🐐🐿  "
        sleep 10

        echo -e "\n\n\n ################### \n\n  user =  admin   ||  password above line ########################   "
# kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'   ##  need to find this line use

#       chromium-browser http://localhost:8080/login  &
        echo -e " \n\n\n ########################### argo-cd CLI install   🐣🐥🦆🦅🦉🐠🐟🐬🐳🐋🦈🐊🦑🐙  \n\n  "
        curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64


	sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
#               rm argocd-linux-amd64  ## delete argocd-linux-amd64

        echo -e "\n argocd version  , Line 38 \n "
        argocd version
        ## https://argo-cd.readthedocs.io/en/stable/user-guide/commands/argocd_completion/
        source <(argocd completion bash)
        ## auto completion  argocd
        echo -e " \n  🐣🐥🦆🦅🦉🐠🐟🐬🐳🐋🦈🐊🦑🐙  ############## to connect argo-cd via terminal admin user || PW below 🐬🐳🐋🦈🐊🦑🐙 \n  "
#       argocd login localhost:8080    ##
         export ARGOCD_SERVER_POD_NAME=$(kubectl get pods -n argocd -l "app.kubernetes.io/name=argocd-server" -o jsonpath="{.items[0].metadata.name}")

        kubectl -n argocd exec -it $ARGOCD_SERVER_POD_NAME -- argocd admin initial-password
        read -s -p "\n\n  Enter your password: " password
        echo "########################################### "
        echo "Line 50 :::  You entered: $password"
        echo "########################################### "

        argocd login localhost:8080 --username admin --password $password   --insecure   ###
        kubectl config set-context --current --namespace=argocd
        echo -e " The below can be done Via UI also   "

######################################################################################
        echo -e " to add repo to argo    argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git "
        argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git
        echo -e " \n argocd repo list :::  Line 60::  \n  "
        argocd repo list


	        echo -e " argocd app create argocd-app-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
        argocd app create demo-argo-helm-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-ui/ --dest-server https://kubernetes.default.svc --dest-namespace default
        argocd app get demo-argo-helm-ui
        argocd app sync demo-argo-helm-ui
	echo -e " argocd app list   Line 68 ::  "
        argocd app list

###################################################################
        echo -e " \n 🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🥥🥝🥨🥖🍞🥯🥐🍠🥔🥕🌽🌶🥒🥬🥦🥑🍆🍅🧀🥚🍳🥞🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🌮🍥🍘🍚🥟🍤🍣🍛🍲🍜🍝🥫🥘🥗🌯🥠🥮🍢🍡🍨🍦🥧🧁🧁🍰🎂🍮🍭🍬🍫🍿🥃🍷🥂🍻🍶🥤🍼🍯🥜🌰🍪🍩🍸🍹🍾🍴🍽🥣🧂  \n\n     "

###########################
              echo -e " argocd app create argocd-app-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-db/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
        argocd app create demo-argo-helm-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-db/ --dest-server https://kubernetes.default.svc --dest-namespace default
        argocd app get demo-argo-helm-db
        argocd app sync demo-argo-helm-db
        argocd app list

        echo -e " argocd UI  ############################## Line 81 ::\n 🥒🥬🥦🥑🍆🍅🧀🥚🍳🥞🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🌮🍥🍘🍚🥟🍤🍣🍛🍲🍜🍝🥫🥘🥗🌯🥠🥮🍢🍡🍨🍦🥧  \n  "
        chromium-browser http://localhost:8080/login  &
        minikube tunnel &
        kubectl get service -A &

	echo  "  🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🥥🥝🥨🥖🍞🥯🥐🍠🥔🥕🌽🌶🥒🍦🥧🧁🧁🍰🎂🍮🍭🍬🍫🍿🥃🍷🥂🍻🍶🥤🍼🍯🥜🌰🍪🍩🍸🍹🍾🍴🍽🥣🧂 \n ##############END ################### \n END of Install_Argo-CD_in_kubectl.sh  \n "


