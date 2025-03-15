#!/bin/bash

# Load the stdoutFormatter.sh script
source ./scripts/stdoutFormatter.sh

# Initialize 00_prepare.sh
info "Initializing 00_prepare.sh..."
source ./source/00_prepare.sh
success "00_prepare.sh initialized successfully!"

# Ensure the script is being run from the root of the repo
if [ ! -d ".git" ]; then
  failed "This script must be run from the root of your dotfiles repository."
  exit 1
fi

# Function to run commands with sudo if necessary
run_with_sudo() {
  if [ "$EUID" -ne 0 ]; then
    sudo "$@"
  else
    "$@"
  fi
}

# Run the Ansible installation and playbook setup
info "Initializing 10_ansible.sh setup..."
run_with_sudo bash ./source/10_ansible.sh
# Check if the Ansible setup was successful
if [ $? -eq 0 ]; then
  success "Ansible setup completed successfully!"
else
  failed "Ansible setup failed. Please check the logs for errors."
  exit 1
fi

# Run the SSH setup script
# Validation is done in the script itself
info "Initializing 20_ssh.sh setup..."
run_with_sudo bash ./source/20_ssh.sh

success "All setup tasks completed successfully!"


# Post-installation source reload is required
info "Reloading shell configuration..."
warning "NOT IMPLEMENTED YET"
# 