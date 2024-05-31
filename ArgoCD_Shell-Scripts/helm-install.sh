#!/bin/bash

# Check if helm is installed
	if command -v helm &>/dev/null; then
		echo "helm is already installed."
	else
                sudo snap install helm --classic
        	echo -e" \n sudo helm completion bash | sudo tee /etc/bash_completion.d/helm > /dev/null \n\n "
        	sudo apt-get install bash-completion
        	sudo helm completion bash | sudo tee  /etc/bash_completion.d/helm > /dev/null
        	echo -e  "\n\n............ ADDING HELM REPO  ..........\n\n "
        	helm repo add stable https://charts.helm.sh/stable
        	helm repo update
        	helm list
		echo -e " HELM installed  🍇    🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑  /n/n "
	fi

