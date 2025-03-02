#!/bin/bash

# Ensure the script is being run from the root of the repo
if [ ! -d ".git" ]; then
  echo "This script must be run from the root of your dotfiles repository."
  exit 1
fi

# Install Ansible if it's not already installed
if ! command -v ansible &>/dev/null; then
  echo "Ansible not found, installing..."
  sudo apt update
  sudo apt install -y ansible
else
  echo "Ansible is already installed."
fi

# Run the Ansible playbook to install everything
echo "Running the Ansible playbook..."
ansible-playbook -i ansible/hosts ansible/playbook.yml