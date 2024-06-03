echo -e "\n 🍏🍎🍐🍊🍋🍌🍉🍇🍓🍈🍒🍑🥭🥥🥝🥨🥖🍞🥯🥐🍠🥔🥕🌽🌶 🥒🥬🥦🥑🍆🍅🧀🥚🍳🥞🥓🥩🍗🍖🦴🌭🍔🍟🍕🥪🥙🌮🍥🍘🍚🥟🍤🍣🍛🍲🍜🍝🥫🥘🥗🌯🥠🥮🍢🍡🍨🍦🥧🧁🧁🍰🎂🍮
🍭🍬🍫🍿🥃🍷🥂🍻🍶🥤🍼🍯🥜🌰🍪🍩🍸🍹🍾🍴🍽 🥣🧂  \n   Add_repo_king-john-website.sh  ##############   \n  "


echo -e " to add repo to argo    argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git "
        argocd repo add https://github.com/panampunna/Helm-Kubectl-demo.git
        echo -e "  argocd repo list "
        argocd repo list
	kubectl create namespace kingjohn
	 argocd proj list
####	 argocd proj create pro-kinig
	 echo -e "adding new project name , namespace    " 

	        echo -e " argocd app create argocd-app-ui --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path king-john-website-helm-argo-cd/ --dest-server https://kubernetes.default.svc --dest-namespace kingjohn  "
        argocd app create king-john-website --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path king-john-website-helm-argo-cd/ --dest-server https://kubernetes.default.svc --dest-namespace kingjohn  
        argocd app get king-john-website
        argocd app sync king-john-website
        argocd app list

################################################################## --revision  develop   --project pro-king
        echo -e "###🐆🦓🦍🐘🦛🦏🐪🐫🦒🦘🐃🐂🐄🐎🐏🐅🦝🐇🕊 🦢🦜🦃🦚🐓🐈🐩🐕🦌🐐🐿   \n     "
       kubectl get service -A | grep king-john-website-king-john-website-helm-argo-cd


############################
#              echo -e " argocd app create argocd-app-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path Demo_argo-cd_helm-chart-db/ --dest-server https://kubernetes.default.svc --dest-namespace default  "
#        argocd app create demo-argo-helm-db --repo  https://github.com/panampunna/Helm-Kubectl-demo.git  --path demo-argo-helm-db/ --dest-server https://kubernetes.default.svc --dest-namespace default
#        argocd app get demo-argo-helm-db
#        argocd app sync demo-argo-helm-db
#        argocd app list
#
        echo -e " argocd  UI  ################################### n\\n "
      #  chromium-browser http://localhost:8080/login  &
     # #  minikube tunnel &
		####        kubectl get service -A &


