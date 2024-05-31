#!/bin/bash

# Check if kubectl is installed
	if command -v kubectl &>/dev/null; then
		echo "kubectl is already installed."
	else
		# Install kubectl
		echo "kubectl is not installed. Installing...  "
	    	sudo apt update
		sudo snap install kubectl --classic
		echo -e "\n ... sudo   apt-get install bash-completion kubectl   next  ...\n "
	        sudo   apt-get install bash-completion
        	kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
		echo "kubectl installed  🍇    🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑 "
	fi



