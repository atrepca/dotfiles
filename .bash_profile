###################
# PLATFORM AGNOSTIC
###################

# History size
HISTSIZE=5000

# Aliases
alias g='git'
alias mv='mv -i'
alias digall='dig +nocmd any +multiline +noall +answer'
# Load local aliases
source ~/.local-aliases
#alias rm='mv -t ~/.Trash'

# Password generator
#mkpw() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-12}; }

export EDITOR=vi

###################
# PLATFORM SPECIFIC
###################

# MAC #############
# ###

# Load the bash git prompt support and set the prompt
source /usr/local/git/contrib/completion/git-prompt.sh
PS1='\e[1;31m-> \e[1;34m\w\e[0m$(__git_ps1) $ '

# Aliases
alias ls='ls -FG'
alias ll='ls -alh'
alias flushcache='dscacheutil -flushcache'

# Password generator; requires: `brew install pwgen`
# At least one of: capital letter, number, special character
makepass() { pwgen -1cny 12 | pbcopy | pbpaste; }
# No ambiguous characters
humanpass() { pwgen -1Bn 12 | pbcopy | pbpaste; }

# DEBIAN ##########
# ######

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)$ '
# Aliases
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#alias ll='ls -alFh'
