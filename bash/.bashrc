#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias fastfetch='fastfetch -l /home/t/.config/fastfetch/logo.txt'

alias crash='shutdown now'
alias round='reboot'
alias sleep='hyprctl dispatch exit'


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

# TROUBLE'S NOTE: WHAT IS THIS?

#. "/home/t/.local/share/cargo/env"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# MLC-LLM

export ANDROID_NDK="$HOME"/plug/Android/Sdk/ndk/29.0.13599879
export TVM_NDK_CC="$ANDROID_NDK"/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android24-clang
export JAVA_HOME=/opt/android-studio/jbr
export TVM_SOURCE_DIR="$HOME"/plug/git/mlc-llm/3rdparty/tvm
