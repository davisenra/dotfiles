export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
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
alias startdb="cd ~/docker/postgresql && docker-compose up -d && cd ~"

# PHP & LARAVEL
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias art="php artisan"

# ALIASES & FUNCTIONS
# ...

# STARSHIP
eval "$(starship init zsh)"
