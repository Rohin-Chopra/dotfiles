# Oh-my-zsh setup
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CACHE_DIR="${ZSH_CACHE_DIR:-$HOME/.cache/zsh}"
mkdir -p "$ZSH_CACHE_DIR/completions"

# Plugins
plugins=(
  git
  docker
  kubectl
)

# Load oh-my-zsh (skip theme since we use starship)
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh

# Zsh completion system
autoload -U compinit && compinit

# Zsh autosuggestions (must be before syntax highlighting)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship prompt
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Aliases
alias tf="terraform"
alias python="python3"

# PATH exports
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Bun
[ -s "/Users/rohinchopra/.bun/_bun" ] && source "/Users/rohinchopra/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/rohinchopra/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# Local bin
. "$HOME/.local/bin/env"

# Zsh syntax highlighting (must be loaded last)
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
