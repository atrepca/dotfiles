# History size
HISTSIZE=2000
HISTFILESIZE=2000

# Aliases
alias g='git'
alias mv='mv -i'
alias digall='dig +nocmd any +multiline +noall +answer'
#alias rm='mv -t ~/.Trash'

# Password generator
function mkpw() { head /dev/urandom | uuencode -m - | sed -n 2p | cut -c1-${1:-12}; }
function mkpw_md5() { head /dev/urandom | md5sum | cut -c1-${1:-12}; }
function mkpw_sha1() { head /dev/urandom | sha1sum | cut -c1-${1:-12}; }

export EDITOR=vi

# PLATFORM SPECIFIC
###################

# MAC #############
#
source /usr/local/git/contrib/completion/git-prompt.sh
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)$ '
# Aliases
#
alias ls='ls -FG'
alias ll='ls -alh'
alias flushcache='dscacheutil -flushcache'

# DEBIAN ##########
#
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(__git_ps1)$ '
# Aliases
#
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
#alias ll='ls -alFh'
