#!/bin/bash

# Check if Minikube is installed
                if command -v minikube &>/dev/null; then
                    echo "Minikube is already installed."
                else
                    # Install Minikube
                    echo "Minikube is not installed. Installing...  https://minikube.sigs.k8s.io/docs/start/  "
		    sudo apt install -y  curl
                    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
                echo "####===     sudo dpkg -i minikube_latest_amd64.deb      =============================##### "
                         sudo dpkg -i minikube_latest_amd64.deb
                echo "2.1   #################     minikube start    ############################# "
                        sleep 81
                            minikube start &
			    echo "###   sudo chmod 666 /var/run/docker.sock   ############################################## "
                sudo chmod 666 /var/run/docker.sock

                echo "####=================================================================================##### "
                    rm minikube_latest_amd64.deb
                    echo -e "Minikube has been installed.  🍇    🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑   /n/n "
                fi


