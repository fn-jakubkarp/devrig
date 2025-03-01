## dotfiles
System Configuration</br>
Author: Jakub Karp

## Description
This repository was created to store my system configuration to quickly set up a new machine on Debian-based systems.
If you wish to use this configuration, feel free fork this repository and change the GITHUB_USERNAME in the command below to your own.

It is inspired by other dotfiles repositories.

## Prerequisites
- Debian-based system
- SSH public key added to GitHub account
- Swap .enc files with your own


## How to run
```shell
export GITHUB_USERNAME=fn-jakubkarp
git clone https://github.com/$GITHUB_USERNAME/dotfiles.git
cd ~/dotfiles
sudo chmod +x install.sh
./install.sh
```


