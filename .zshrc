#
# atrepca settings
#

# Set global editor
export EDITOR=vi

# Bump history size
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE

# Custom prompt with git
setopt PROMPT_SUBST ; PS1='%F{red}->%f %F{blue}%~%f $(git_prompt_info) $ '
