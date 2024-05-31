
        echo "Welcome $(whoami)"
        echo You are using $(cat /etc/issue)"
        echo -e "RUN this Only 1 time  basic install "
        echo "Kubernetes  https://kubernetes.io/|| https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/ "
        echo "1 SNAP URL = https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/       "
        sudo apt update
        echo "1.2 SNAP = "snap install kubectl --classic" |## |  "kubectl version --client"  ###   "
        sudo snap install curl
        sudo snap install kubectl --classic
        echo "####====  kubectl version --client   ================================================##### "
        kubectl version --client
        echo "################################# SLEEP 5 ################################################ "
        sleep 5
        echo "##########   sudo snap install docker, docker is needed for Kubernetes       ###############"
        #        sudo snap install docker
        sudo   apt-get install -y docker.io
        sleep 9
        echo "###   sudo chmod 666 /var/run/docker.sock   ############################################## "
                sudo chmod 666 /var/run/docker.sock
        echo "####=================================================================================##### "
        # Check if Minikube is installed
                if command -v minikube &>/dev/null; then
                    echo "Minikube is already installed."
                else
                    # Install Minikube
                    echo "Minikube is not installed. Installing...  https://minikube.sigs.k8s.io/docs/start/  "
                    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
                echo "####===     sudo dpkg -i minikube_latest_amd64.deb      =============================##### "

		           sudo dpkg -i minikube_latest_amd64.deb
                echo "2.1   #################     minikube start    ############################# "
                                minikube start
                echo "####=================================================================================##### "
                    rm minikube_latest_amd64.deb
                    echo "Minikube has been installed."
                fi

        echo "####=================================================================================##### "
        echo "####=====  kubectl auto complete    https://spacelift.io/blog/kubectl-auto-completion   ====##### "
                sudo   apt-get install bash-completion
                kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
        echo "####=================================================================================##### "


