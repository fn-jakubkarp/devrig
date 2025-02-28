#!/bin/bash

source ./const.sh


# Ensure the .ssh directory exists
mkdir -p ~/.ssh

# Pull the encrypted SSH key from your repo
git clone "$GITHUB_REPO_URL"

# Prompt for the passphrase securely
echo "Enter your SSH key passphrase:"
read -s PASSPHRASE

# Decrypt the SSH key
echo "$PASSPHRASE" | openssl enc -aes-256-cbc -pbkdf2 -d -in path/to/your/encrypted/id_ed25519.enc -out ~/.ssh/id_ed25519 -pass stdin

# Set the correct permissions on the decrypted key
chmod 600 ~/.ssh/id_ed25519

# Test the connection to GitHub
ssh -T git@github.com
