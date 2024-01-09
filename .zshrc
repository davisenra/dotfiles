# ------------------------------------------------------------
# ZSH / OH-MY-ZSH
# ------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------
# PERSONAL ALIASES
# ------------------------------------------------------------
alias art="php artisan"
alias com="composer"
alias dc="docker compose"

# ------------------------------------------------------------
# BUN
# ------------------------------------------------------------
[ -s "/home/davi/.bun/_bun" ] && source "/home/davi/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/davi/.config/composer/vendor/bin:$PATH"
