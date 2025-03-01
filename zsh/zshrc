# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git z zsh-autosuggestions zsh-syntax-highlighting you-should-use)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias proxy-chrome='chromium --proxy-server="socks5://127.0.0.1:8080"'
alias cls='clear'
alias cat='batcat'
alias gs='git status'
alias gp='git pull'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gbb='git rev-parse --abbrev-ref HEAD'
alias cdd='cd /home/lirin/Dev/'
alias cdb='cd /home/lirin/Dev/nightly-monorepo/nightlyExtension/apps/extension'
alias cpbsh='cdb && source /home/lirin/Dev/local_build.sh'
alias builder='cdb && source /home/lirin/Dev/builder.sh'
alias extbuild='export NODE_OPTIONS=--max_old_space_size=8192 && vite build'
alias prenode='export NODE_OPTIONS=--max_old_space_size=8192'
alias reload='source ~/.zshrc'
alias codezsh='code ~/.zshrc'
alias fd='fdfind'  # Use fd command (installed as fdfind)
alias runstory='cd /home/lirin/Dev/nightly-monorepo/nightlyExtension/packages/commons && yarn run storybook'

alias ls='eza --classify=always'
alias la='eza -a --classify=always'
alias ll='eza -l'
alias lla='eza -l -a'


# Functions

# Convert video to MP4 format
cv() {
  echo "Enter input file name (e.g., IMG_4725.MP4):"
  read input_file
  echo "Enter output file name (e.g., output.mp4):"
  read output_file
  ffmpeg -i "$input_file" -vcodec libx264 -crf 28 "$output_file"
}

# Frontend build function
fb() {
    # prenode
    # yarn install && echo "Yarn install completed."
    # yarn build && echo "Yarn build completed."
    # cpbsh
    builder
}

# Tree view using eza
function tree() {
    if [[ -z "$1" ]]; then
        eza --tree --level=2
    else
        eza --tree --level=$1
    fi
}

# ZSH Autosuggestions configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#465b7d"

# FZF Configuration

# FZF color theme
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#121212,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
  --color=prompt:#d7005f,spinner:#4d2773,pointer:#ff4848,header:#87afaf
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --border="rounded" --border-label="lirin" --border-label-pos="0" --preview-window="border-rounded"
  --padding="0,1" --margin="0,1" --prompt="> " --marker=">"
  --pointer="◆" --separator="-" --scrollbar="│" --info="right"'

# Use fd instead of find for FZF
_fzf_compgen_path() {
  fdfind --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fdfind --type d --hidden --exclude .git . "$1"
}

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else batcat -n --color=always --line-range :500 {}; fi"

# FZF command configurations
export FZF_DEFAULT_COMMAND="fdfind --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type d --hidden --exclude .git"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# NVM (Node Version Manager) configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"