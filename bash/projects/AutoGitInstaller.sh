#!/bin/bash
# If-Else in shell scripting ~ example of installing git on different machines

echo "Script to install git "
echo "Installation started"
if [ "$(uname)" == "Linux" ];
then
	echo "This is a linux machine. Proceeding to install git..."
# -y answers yes to all prompts
	sudo apt install git -y
elif [ "$(uname)" == "Darwin" ];
then
	echo "This is a mac machine. Proceeding to install git..."
	brew install git
else
	echo "Sorry cannot install. Please use an alternative method to install git."
fi
