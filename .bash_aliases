# navigation
alias ..='cd ..'
alias ...='cd ../../'

# system
alias update='sudo apt-get update && sudo apt-get upgrade'

# terminal
alias c='clear'
alias hs='history | grep -i'

# memory
alias df='df -H'		# File system disk space usage (human-readable)
alias dus='du -sh'		# File space usage (summary, human-readable)
alias du1='du -hd 1 | sort -h'	# File space usage (current dir, sorted by size)

# ls
alias ls='ls --color=auto'	# Colorful list files
alias ll='ls -alFh'		# List all as list and classify
alias la='ls -lisA'		# List almost-all
alias l='ls -CF'		# List in columns and classify
alias lh='ls -lisAd .[^.]*'	# List only hidden files
alias lt='ls -Alht'		# Sort by time
alias ltr='ls -Alhtr'		# Sort by time (reverse)
alias lss='ls -AFlhS'		# Sort by size
alias lsr='ls -AFlhSr'		# Sort by size (reverse)

# find
alias ff='find . -type f -iname'	# Find file
alias fd='find . -type d -iname'	# Find directory
alias fcpp='find . -iname "*.cpp" | xargs grep -ni --color=always '
alias fhpp='find . \( -iname "*.h" -o -iname "*.hpp" \) | xargs grep -ni --color=always '
alias fqml='find . -iname "*.qml" | xargs grep -ni --color=always '
alias fqt='find . \( -iname "*.h" -o -iname "*.hpp" -iname "*.cpp" -o -iname "*.qml" -o -iname "*.qrc" \) | xargs grep -ni --color=always '

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# vim
alias vi='vim'
alias svim='sudo vim'

# git
alias gl='git log'
alias gle='git log --oneline --decorate'
alias gls='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short --numstat'
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gf='git fetch'
alias gc='git checkout '
