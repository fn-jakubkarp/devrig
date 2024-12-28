#!/bin/bash

set -e

# Install Ansible if not present
if ! command -v ansible &> /dev/null; then
    echo "Installing Ansible..."
    sudo apt update
    sudo apt install -y ansible
fi


ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass

echo "Ansible installation complete."
