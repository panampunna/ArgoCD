#######################################################



#GitOpsCLI_Install() {
        echo " https://baloise.github.io/gitopscli/setup/  "
        echo    "https://www.youtube.com/watch?v=f5EpcWp0THw "
	sudo apt install python3-poetry
        git clone https://github.com/baloise/gitopscli.git
        cd gitopscli/
        poetry install
        poetry run gitopscli --help
        #       sudo apt install -y  python3-pip pipx python3.12
        #       cd  /tmp
        #        git clone https://github.com/baloise/gitopscli.git
        #        pip3 install gitopscli/
        echo -e "\n\n\n\n ##################################################\n "
       #        export PATH=$PATH:/home/john/.local/bin
       #        echo -e  " \n\n\n      pip3 uninstall gitopscli "
         echo " ####################################################  "
#}
####

