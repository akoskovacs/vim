# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

. ~/.bash_profile

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# mint-fortune
/usr/bin/mint-fortune
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[1;35m\]$(__git_ps1)\[\033[00m\] \$ '
#PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\] - [$(__git_ps1)\[\033[0;32m\]]\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/akos/.sdkman"
[[ -s "/home/akos/.sdkman/bin/sdkman-init.sh" ]] && source "/home/akos/.sdkman/bin/sdkman-init.sh"
alias sshpiz='ssh -X pi@fe80::b2b0:a8e1:eb90:9c79%enp0s26u1u2'
stty -ixon

serve() {
    #netstat -r
    ifconfig | grep 'inet addr' -B1
    python -mSimpleHTTPServer
}
export ANDROID_HOME=/home/akos/Android/Sdk
export PATH="${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

###-tns-completion-start-###
if [ -f /home/akos/.tnsrc ]; then 
    source /home/akos/.tnsrc 
fi
###-tns-completion-end-###

# Initialize directory jumper. Generated by '/home/akos/.dirjumper/bin/dj'.
eval "$(/home/akos/.dirjumper/bin/dj -s)"
alias qmake=/shared/Qt/5.9.1/gcc_64/bin/qmake

