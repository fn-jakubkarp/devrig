## dotfiles

System Configuration
Author: Jakub Karp

## Description
This repository was created to store my system configuration to quickly set up a new machine on Debian-based systems.
If you with to use this configuration, feel free fork this repository and change the GITHUB_USERNAME in the command below to your own.

It is inspired by other dotfiles repositories.

## How to run

```shell
export GITHUB_USERNAME=fn-jakubkarp
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME

```

```shell
export GITHUB_USERNAME=fn-jakubkarp
git clone https://github.com/$GITHUB_USERNAME/dotfiles.git
cd ~/dotfiles
sudo chmod +x install.sh
./install.sh
```
