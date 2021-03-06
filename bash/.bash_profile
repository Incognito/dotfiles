export TERM='xterm-256color'

source ~/.bashrc                                                               # import .bashrc

# Override PS1 to provide git repo info
source ~/.git-prompt.sh
export PS1='\[\e[01;30m\]\u (\D{%F %T})\[\e[00m\]>\[\e[00;36m\]\w\[\e[00m\]$(__git_ps1 " (%s)")\$ ' # nice prompt

export HISTCONTROL=ignoreboth
export HISTSIZE=9999999
export HISTCONTROL=ignoreboth

#
# Aliases
#

alias ll='ls -GhlF'                                                            # Color + Human readable + long + metadata
alias la='ll -A'                                                               # same that above + every files

alias vi='vim'                                                                 # You never want to use vi

alias g='git'                                                                  # because I'm always type "gti"

alias ag='ag --path-to-agignore=~/.agignore'

alias j='jira'                                                                  # because I'm always type "gti"
alias wpp='jira jql '\''filter = "WPP Kanban base filter" AND status not in (open, closed)'\'''

