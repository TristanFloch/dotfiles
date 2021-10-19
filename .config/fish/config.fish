
# Prevent greeting on open terminal
set fish_greeting

# colored greeting :)
# colorscript random

# Aliases
alias proj "cd $HOME/Documents/programmation/projects/"
alias cpp "cd $HOME/Documents/programmation/cpp_workshop/"
alias swim "cd $HOME/Documents/programmation/piscine/tristan.floch-piscine-2023/"
alias bch "bluetoothctl connect 38:18:4C:4B:BB:6A"
alias bdh "bluetoothctl disconnect 38:18:4C:4B:BB:6A"
alias 42 "proj; cd 42sh/"
alias spider "proj; cd spider/"
alias chess "proj; cd chess/"
alias frigo "proj; cd ping/"
alias config "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias javel "cd $HOME/Documents/programmation/java_workshop/"

# Arco aliases
alias cd.. "cd .."

# Abbreviations
if status --is-interactive
   abbr --add --global screen-off 'xrandr --output HDMI-1 --off'
   abbr --add --global screen-on 'xrandr --output HDMI-1 --auto --right-of eDP-1 ; ~/.config/polybar/launch.sh'
   abbr --add --global pol '~/.config/polybar/launch.sh'
   abbr --add --global doom '~/.emacs.d.doom/bin/doom'
   abbr --add --global g 'git'
   abbr --add --global gl 'git log --oneline --graph --all'
   abbr --add --global gg 'git status'
   abbr --add --global gc 'git checkout'
   abbr --add --global gr 'git rebase'
   abbr --add --global gp 'git push'
   abbr --add --global gp-f 'git push --force-with-lease'
   abbr --add --global gF 'git pull'
   abbr --add --global gb 'git branch'
   abbr --add --global gbc 'git checkout -b'
   abbr --add --global gbl 'git checkout'
   abbr --add --global end2end 'rm ~/Documents/code/sdk-python/package ; poetry run python end2end.py --use-local-sources --profile linux-release-gcc11'
   abbr --add --global compat-docker-pull "poetry run python run-ci.py generate-docker-compose --pull"
   abbr --add --global compat-restart-services "poetry run python run-ci.py stop-services ; poetry run python run-ci.py start-services"
   abbr --add --global compat-start-services "poetry run python run-ci.py start-services"
   abbr --add --global compat-stop-services "poetry run python run-ci.py stop-services"
   abbr --add --global compat-export-local-sdk "poetry run conan export ../sdk-native ; poetry run python run-ci.py native install local --profile=linux-release-gcc11"
   abbr --add --global compat-before-tests "poetry run python run-ci.py native before --profile=linux-release-gcc11"
   abbr --add --global compat-after-tests "poetry run python run-ci.py native after --profile=linux-release-gcc11"
end

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# env variable for doom emacs
set -x EMACSDIR ~/.emacs.d.doom
# set PATH $PATH ~/.emacs.d/bin/

set EDITOR vim

fish_add_path "$HOME/.local/bin"

set -x PGDATA "$HOME/Documents/postgres_data"
set -x PGHOST "/tmp"

starship init fish | source
