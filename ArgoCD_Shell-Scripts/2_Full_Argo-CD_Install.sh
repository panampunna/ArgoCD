

Demo_argo-cd_Full_Install () {

                   # Check if the first argument (tag) is provided
    if [ -z "$1" ]; then
        echo "Error: Tag is required. Usage: Demo_argo-cd_Full_Install <tag>"
        return 1
    fi

        a="$1"

        echo "1: Create Docker Images for UI and Postgres DB with Tags  "
        cd /home/john/Vimal/2023-ubuntu/Shell-Scripts/INSTALL-Packages
        /home/john/Vimal/2023-ubuntu/Shell-Scripts/INSTALL-Packages/./docker-install.sh
         echo -e " \n\n\n 🧑👨  🎅 🏌  🐂🐄🐎🐖🐏🐑🦙🐐🦌🫎🐕    "
        /home/john/Vimal/2023-ubuntu/Shell-Scripts/INSTALL-Packages/./minikube-install.sh
         echo -e " \n\n\n "
        /home/john/Vimal/2023-ubuntu/Shell-Scripts/INSTALL-Packages/./kubectl-install.sh
         echo -e " \n\n\n "
        /home/john/Vimal/2023-ubuntu/Shell-Scripts/INSTALL-Packages/./helm-install.sh
        echo "GitOps need to install \n\n\n 🐓🦃🦤🦚🦜🦢🪿🦩 "
        minikube start  &
        echo "2: Create Helm Charts : https://github.com/panampunna/Helm-Kubectl-demo  any change in this repo will deploy new build     \n\n\n  🍅🍆🥑🥦🫛🥬🥒🌶 🫑🌽 "

        echo "3: Create Argo-CD : and deploy :: https://hub.docker.com/repository/docker/vimaldevops/flask_app/general   new iange tags \n\n\n 🦴🌭🍔🍟🍕🫓🥪🥙🧆🌮🌯🫔
   "

        Demo_argo-cd_step_1 $a
        echo "4:   GitOps to change Helm Char =  GitOpsCLI_Install  \n\n\n 🍨🍦🥧🧁🍰🎂🍮🍭🍬🍫🍿🍩🍪🌰🥜🍯 "
        GitOpsCLI_Install
#       cd /home/john/Vimal
#       git clone https://github.com/panampunna/Helm-Kubectl-demo.git

        GitOpsCLI_Install
        GitOpsCLI_deploy_values-yaml_demo-argo-helm-db "$a"
        GitOpsCLI_deploy_Chart-yaml_demo-argo-helm-db
        GitOpsCLI_deploy_values-yaml_demo-argo-helm-ui "$a"
        GitOpsCLI_deploy_Chart-yaml_demo-argo-helm-ui

        argo_Install_Only-kubectl_installed



