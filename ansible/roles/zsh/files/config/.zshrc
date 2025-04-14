# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
# plugins=(git z zsh-autosuggestions zsh-syntax-highlighting you-should-use)

# source $ZSH/oh-my-zsh.sh

# ZSH Autosuggestions configuration
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#465b7d"

# NVM (Node Version Manager) configuration
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH_CONFIG_DIR="$HOME/.config/zsh"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
  you-should-use
)


# Initialize Starship prompt
eval "$(starship init zsh)"


# Source all alias files
for alias_file in $ZSH_CONFIG_DIR/aliases/*.zsh; do
  [ -f "$alias_file" ] && source "$alias_file"
done

# Source all function files
for function_file in $ZSH_CONFIG_DIR/functions/*.zsh; do
  [ -f "$function_file" ] && source "$function_file"
done

# Source additional ZSH config files
for config_file in $ZSH_CONFIG_DIR/*.zsh; do
  [ -f "$config_file" ] && source "$config_file"
done
