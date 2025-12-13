export EDITOR=vi
export VISUAL=vi
bindkey -e
export HISTSIZE=100
set +o noclobber
ulimit -c 0
alias ls='ls -FC'
alias t='tmux attach'
alias ssh='ssh -A'
alias pi1='mosh pi@pi1.local'
alias pi2='mosh pi@pi2.local'
alias pi3='mosh pi@pi3.local'
alias retropie='ssh pi@retropie.local'
alias kindle='ssh root@10.0.0.15'
alias bato='ssh root@bato.local'
alias recalbox='ssh root@recalbox.local'
alias air='ssh mittonk-air.local'
alias moshair='mosh mittonk-air.local'
alias vpinball='/Applications/VPinballX_GL.app/Contents/MacOS/VPinballX_GL'
alias vpinball2='vpinball -DisableTrueFullscreen -ini ~/.vpinball/2screen.ini'
alias vpxtool='~/bin/vpxtool'
alias vpx='vpxtool frontend'
alias ltop='top -s1 -o cpu -R -F'
alias grp='grep -SIir'
alias timemachine='sudo sysctl debug.lowpri_throttle_enabled=0'
alias retroarch='/Users/mittonk/Library/Developer/Xcode/DerivedData/RetroArch-aktjdpmddadjjedtijeelqsglpmh/Build/Products/Debug/RetroArch.app/Contents/MacOS/RetroArch'
alias dfx='df -h -T nodevfs,autofs | grep Data'
alias dusht='du -sh -t 1G *'
alias mgba='open -a mGBA.app'
# batorom systemname files
batorom() {
   scp -r ${@:2} root@bato.local:/userdata/roms/$1/
}
batobios() {
   scp ${@:1} root@bato.local:/userdata/bios/
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
bindkey -e
