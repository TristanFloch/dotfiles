
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
   abbr --add --global 'glog' 'git log --oneline --graph --all'
   abbr --add --global 'gstat' 'git status'
end

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"

# env variable for doom emacs
set -x EMACSDIR ~/.emacs.d.doom
# set PATH $PATH ~/.emacs.d/bin/

set EDITOR vim
set PATH $PATH /home/tristan/.local/bin

set -x PGDATA "$HOME/Documents/postgres_data"
set -x PGHOST "/tmp"

starship init fish | source
