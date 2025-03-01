#!/bin/bash

# Ensure the .ssh directory exists
mkdir -p ~/.ssh

# Pull the encrypted SSH key from your repository (relative path)
echo "Enter your SSH key passphrase:"
read -s PASSPHRASE

# Decrypt the SSH key
echo "$PASSPHRASE" | openssl enc -aes-256-cbc -pbkdf2 -d -in ./scripts/ssh/id_ed25519.enc -out ~/.ssh/id_ed25519 -pass stdin

# Set the correct permissions on the decrypted key
chmod 600 ~/.ssh/id_ed25519

# Test the connection to GitHub
if ssh -T git@github.com; then
    echo "Successfully authenticated with GitHub."
else
    echo "GitHub authentication failed."
    exit 1
fi
