# ~/.local/share/chezmoi/run_once_install_packages.sh
#!/bin/bash
set -e

echo "Installing system packages..."
sudo apt update
sudo apt install -y \
    git \
    curl \
    wget \
    htop \
    tmux \
    unzip \
    python3-pip \
    golang \
    zsh \
    neovim \
    ripgrep \
    fd-find




