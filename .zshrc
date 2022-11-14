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
alias cleanup="find -depth -mindepth 1 -type d -empty -exec rmdir -v "{}" \;"

# DOCKER DEVELOPMENT
alias dockerps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}'"
alias startdb="cd ~/docker/postgresql && docker-compose up -d && cd ~"

# PHP & LARAVEL
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias art="php artisan"

# ALIASES & FUNCTIONS
function ydl () { youtube-dl $1 }
function video2zap () { ffmpeg -i $1 -vcodec libx264 -crf $2 video2zap.mp4 }

# STARSHIP
eval "$(starship init zsh)"
