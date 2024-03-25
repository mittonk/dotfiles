export EDITOR=vi
export VISUAL=vi
alias ssh='ssh -A'
alias pi1='mosh pi@pi1.local'
alias pi2='mosh pi@pi2.local'
alias pi3='mosh pi@pi3.local'
alias kindle='ssh root@10.0.0.15'
alias timemachine='sudo sysctl debug.lowpri_throttle_enabled=0'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
bindkey -e
