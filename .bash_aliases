# alias
alias cls='clear'
alias his='history'
alias hisg='history | grep'
alias ..='cd ..'
alias ...='cd ../..'

# function
function ext() {
    if [ -f $1 ] ; then
       case $1 in
       *.7z) 7z x $1 ;;
       *.bz2) bunzip2 $1 ;;
       *.gz) gunzip $1 ;;
       *.rar) rar x $1 ;;
       *.tar) tar xvf $1 ;;
       *.tar.bz2) tar xvjf $1 ;;
       *.tar.gz) tar xvzf $1 ;;
       *.tbz2) tar xvjf $1 ;;
       *.tgz) tar xvzf $1 ;;
       *.Z) uncompress $1 ;;
       *.zip) unzip $1 ;;
       *) echo "Error: extraction impossible for '$1'..." ;;
       esac
    else
       echo "Error: '$1' is not a file!"
    fi
}

function cleanup() {
    find $1 -name "*.bak" | xargs rm
    find $1 -name "*.BAK" | xargs rm
}
