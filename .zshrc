#. /sw/bin/init.sh
export EDITOR=vi
export VISUAL=vi
bindkey -e
export HISTSIZE=100
set +o noclobber
ulimit -c 0
alias ls='ls -FC --color'
alias t='tmux attach'
alias ssh='ssh -A'
alias pi1='ssh mittonk@pi1.local'
alias pi2='ssh mittonk@pi2.local'
alias pi3='ssh mittonk@pi3.local'
alias mosh1='mosh mittonk@pi1.local'
alias mosh2='mosh mittonk@pi2.local'
alias mosh3='mosh mittonk@pi3.local'
alias retropie='ssh pi@retropie.local'
alias kindle='ssh root@10.0.0.15'
alias bato='ssh root@bato.local'
alias batocera='ssh root@batocera.local'
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
alias dfx='df -h -I -T noautofs,devfs | grep "\(^Filesystem\|/System/Volumes/Data\|\B/Volumes\)"'
alias dusht='du -sh -t 1G *'
alias mgba='open -a mGBA.app'
alias codeload3.sh='/Users/mittonk/builds/zeptoforth-1.16.0/utils/codeload3.sh'
alias zeptoforth='picocom -b 115200 /dev/cu.usb*'
alias picomite='picocom -b 115200 --omap delbs /dev/cu.usb*'
alias quintus='picocom -b 115200 --imap lfcrlf,crcrlf --omap delbs,crlf /dev/cu.usb*'
# batorom systemname files
batorom() {
   scp -r ${@:2} root@bato.local:/userdata/roms/$1/
}
batobios() {
   scp ${@:1} root@bato.local:/userdata/bios/
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
bindkey -e
