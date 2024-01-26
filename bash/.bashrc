# Setup for bash history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Update the values of LINES and COLUMNS after window resize
shopt -s checkwinsize

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

# Setup PATH
export PATH=/home/$USER/.local/bin:$PATH

# Setup starship prompt
eval "$(starship init bash)"

