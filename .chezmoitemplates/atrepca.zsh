# Aliases
alias digall='dig +nocmd any +multiline +noall +answer'
alias g='git'
alias grep='grep --color=auto'
alias ll='ls -alFh'
{{ if eq .chezmoi.os "darwin" -}}
alias ls='ls -G'
{{- else -}}
alias ls='ls --color=auto'
{{- end }}
alias mv='mv -i'
alias rm='rm -i'

# Work
alias k='kubectl'
alias t='terraform'
alias get_sub='az account show --query name -o tsv'

# Set global editor
export EDITOR=vim

# Bump history size
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE

# I don't want no theme
ZSH_THEME=""

# Custom prompt with git
setopt PROMPT_SUBST ; PS1='%F{red}->%f %F{blue}%~%f $(git_prompt_info) $ '
