export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color

ZSH_THEME="half-life"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias art="php artisan"
alias dc="docker compose"

# bun completions
[ -s "/home/davi/.bun/_bun" ] && source "/home/davi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/davi/.config/composer/vendor/bin:$PATH"
