#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias python2='python'
alias python='python3'

alias cl='clear'
alias b='xbacklight -set'


PS1='[\u@\h \W]\$ '
