export TERM='xterm-256color'

source ~/.bashrc                                                               # import .bashrc

# Override PS1 to provide git repo info
source ~/.git-prompt.sh
export PS1='\[\e[01;30m\]\u@\h\[\e[00m\]:\[\e[00;36m\]\w\[\e[00m\]$(__git_ps1 " (%s)")\$ ' # nice prompt

#
# Aliases
#

alias ll='ls -GhlF'                                                            # Color + Human readable + long + metadata
alias la='ll -A'                                                               # same that above + every files

alias vi='vim'                                                                 # You never want to use vi

alias g='git'                                                                  # because I'm always type "gti"

