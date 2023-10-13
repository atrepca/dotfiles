###################
# PLATFORM AGNOSTIC
###################

# History size
export HISTSIZE=10000

# Aliases
alias digall='dig +nocmd any +multiline +noall +answer'
alias g='git'
alias mv='mv -i'
alias rm='rm -i'
# Load local aliases
source ~/.local-aliases

# Set global editor
export EDITOR=vi

# Tell tfenv we're on Apple Silicon
export TFENV_ARCH=arm64

###################
# PLATFORM SPECIFIC
###################

# MAC #############
# ###

# Load the bash git prompt support
source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
# Show unstaged (*) and staged (+) changes
export GIT_PS1_SHOWDIRTYSTATE=1
# Display '$' if something is stashed
export GIT_PS1_SHOWSTASHSTATE=1
# Display '%' if there are untracked files
export GIT_PS1_SHOWUNTRACKEDFILES=1
# Set custom prompt w/ git
PS1='\[\e[1;31m\]-> \[\e[1;34m\]\w\[\e[0m\]$(__git_ps1) $ '
# Add brew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
# Disable sending brew analytics
export HOMEBREW_NO_ANALYTICS=1

# Aliases
alias ls='ls -FG'
alias ll='ls -alh'
alias flushcache='sudo killall -HUP mDNSResponder'

psgrep() { ps -ef | grep $1; }

# DEBIAN ##########
# ######

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)$ '
# Aliases
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#alias ll='ls -alFh'
