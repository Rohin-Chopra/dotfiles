# Zsh completion system
autoload -U compinit && compinit

# Zsh autosuggestions (must be before syntax highlighting)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Oh-my-zsh plugins
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
source ~/.oh-my-zsh/plugins/docker/docker.plugin.zsh
source ~/.oh-my-zsh/plugins/kubectl/kubectl.plugin.zsh

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
