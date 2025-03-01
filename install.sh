#!/bin/bash

# Ensure the script is being run from the root of the repo
if [ ! -d ".git" ]; then
  echo "This script must be run from the root of your dotfiles repository."
  exit 1
fi

# Run the Ansible installation and playbook setup
echo "Running Ansible setup..."
source ./source/00_ansible.sh

# Run the SSH setup script
echo "Running SSH setup..."
source ./source/01_ssh.sh

echo "All setup tasks completed successfully!"
