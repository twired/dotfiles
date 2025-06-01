#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias fastfetch='fastfetch -l /home/t/.config/fastfetch/logo.txt'


# XDG

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# XDG-NINJA

export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export WINEPREFIX="$XDG_DATA_HOME"/wine

# ELSE

alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

export PATH=$PATH:$HOME/.local/
