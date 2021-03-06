#!/bin/bash
#this script utilizes open edX ansible-bootstrap.sh and sandbox.sh bash scripts to set up a production level platform

#locale settings for Asia/Seoul AWS EC2 instance
echo "Setting locale to en_US.UTF-8..."
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo dpkg-reconfigure locales

#install requirements and ansible
sudo bash requirements/ansible-bootstrap.sh
sudo bash requirements/sandbox.sh

#Configure SSH Settings
ansible-playbook -inventory.ini playbooks/setup.yml
