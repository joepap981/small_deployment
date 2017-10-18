#!/bin/bash

export ANSIBLE_ROLES_PATH=/var/tmp/configuration/playbooks/roles
export ANSIBLE_LIBRARY=/var/tmp/configuration/playbooks/library
export ANSIBLE_JINJA2_EXTENSIONS=jinja2.ext.do

#install datastores server
echo "Now installing datastores server..."
sudo ANSIBLE_ROLES_PATH=/var/tmp/configuration/playbooks/roles ANSIBLE_LIBRARY=/var/tmp/configuration/playbooks/library ANSIBLE_JINJA2_EXTENSIONS=jinja2.ext.do  ansible-playbook -i inventory.ini -e server_var.yml playbooks/edx-datastores.yml

#install stateless server
echo "Now installing Stateless server..."
sudo ANSIBLE_ROLES_PATH=/var/tmp/configuration/playbooks/roles ANSIBLE_LIBRARY=/var/tmp/configuration/playbooks/library ANSIBLE_JINJA2_EXTENSIONS=jinja2.ext.do  ansible-playbook -i inventory.ini -e server_var.yml playbooks/edx-stateless.yml
