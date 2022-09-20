export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

DEFAULT_USER="davi"

# MANJARO
alias update="sudo pamac update"
alias c="clear"
alias ..='cd ..'
alias ....='cd ../..'

# DOCKER DEVELOPMENT
alias dockerps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}'"

# PHP & LARAVEL
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias artisan="php artisan" 

# STARSHIP
eval "$(starship init zsh)"
