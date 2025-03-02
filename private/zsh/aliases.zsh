# Git aliases
alias gs='git status'
alias gp='git pull'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gbb='git rev-parse --abbrev-ref HEAD'

# Directory aliases
alias cdd='cd /home/lirin/Dev/'
alias cdb='cd /home/lirin/Dev/nightly-monorepo/nightlyExtension/apps/extension'
alias cpbsh='cdb && source /home/lirin/Dev/local_build.sh'
alias builder='cdb && source /home/lirin/Dev/builder.sh'

# Utility aliases
alias cls='clear'
alias prenode='export NODE_OPTIONS=--max_old_space_size=8192'
alias reload='source ~/.zshrc'
alias codezsh='code ~/.zshrc'

# Aliases for installed packages
alias ls='eza --classify=always'
alias la='eza -a --classify=always'
alias ll='eza -l'
alias lla='eza -l -a'
alias cat='batcat'
alias fd='fdfind'  # Use fd command (installed as fdfind)

