#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

# alias
alias cls="clear"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias wallpaper="feh --bg-fill ~/Pictures/wallpapers/liswall.jpg"

# Automatically open tmux on Konsole start
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

[ -f "/home/jm/.ghcup/env" ] && . "/home/jm/.ghcup/env" # ghcup-env

#Display?
if [ "$DISPLAY" != "" ]
then
    xhost +local:
fi

eval clear
eval fortune | cowsay
eval "$(starship init bash)"
