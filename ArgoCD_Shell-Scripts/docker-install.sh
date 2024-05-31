#!/bin/bash

# Check if docker is installed
	if command -v docker &>/dev/null; then
		echo "Docker is already installed."
	else
		# Install Docker
		echo "Docker is not installed. Installing...  "
	    	sudo apt update
		sudo apt install -y  docker.io
		sleep 70
		sudo chmod 666 /var/run/docker.sock
		echo -e "Docker installed  🍇    🍈 🍉  🍊 🍋  🍍 🥭  🍎  🍏 🍐 🍑  /n/n  "
	fi

