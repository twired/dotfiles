#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# XDG

export XDG_STATE_HOME="$HOME/.local/state"

export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export PATH=$PATH:$HOME/.local/bin
