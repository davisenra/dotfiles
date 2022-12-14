export ZSH="$HOME/.oh-my-zsh"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

DEFAULT_USER="davi"

# MANJARO
alias update="sudo pamac update"
alias c="clear"
alias ..='cd ..'
alias ....='cd ../..'
alias cleanup="find -depth -mindepth 1 -type d -empty -exec rmdir -v "{}" \;"
alias lvim="/home/davi/.local/bin/lvim"

# DOCKER DEVELOPMENT
alias dockerps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}'"
alias startdb="cd ~/docker/postgresql && docker-compose up -d && cd ~"
alias lzd="lazydocker"

# PHP & LARAVEL
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias art="php artisan"
alias pint="./vendor/bin/pint"

# ALIASES & FUNCTIONS
function ydl () { youtube-dl $1 }
function video2zap () { ffmpeg -i $1 -vcodec libx264 -crf $2 video2zap.mp4 }

# STARSHIP
eval "$(starship init zsh)"
