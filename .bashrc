# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# vi mode (press <esc> and use vim keybindings to edit the current command)
set -o vi

# better completion, if available
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# colorize commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrip --color=auto'
alias egrep='egrep --color=auto'


# include .bashrc.local if it exists
if [[ -f ~/.bashrc.local ]]; then
  source ~/.bashrc.local
fi
