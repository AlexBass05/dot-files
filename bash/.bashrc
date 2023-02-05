# Setup for bash history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Update the values of LINES and COLUMNS after window resize
shopt -s checkwinsize

# Git branch in prompt.
function git_color {
    local COLOR_RED="\033[0;31m"
    local COLOR_YELLOW="\033[0;33m"
    local COLOR_GREEN="\033[0;32m"
    local COLOR_OCHRE="\033[38;5;95m"

    local git_status="$(git status 2> /dev/null)"

    if [[ ! $git_status =~ "working tree clean" ]]; then
        echo -e $COLOR_RED
    elif [[ $git_status =~ "Your branch is ahead of" ]]; then
        echo -e $COLOR_YELLOW
    elif [[ $git_status =~ "nothing to commit" ]]; then
        echo -e $COLOR_GREEN
    else
        echo -e $COLOR_OCHRE
    fi
}

function parse_git_branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Command prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\$(git_color)\]\$(parse_git_branch)\[\033[00m\]\$ "

# Alias definitions
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# Extend .bashrc
if [ -f ~/.bashrc_extended ]; then
   . ~/.bashrc_extended
fi

# Enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Setup autocompletion for git
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gc _git_checkout
  __git_complete gp _git_pull
fi

# Setup starship prompt
eval "$(starship init bash)"

