# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Personnal PS1
# using tput commands
    FGBLK=$( tput setaf 0 ) # 000000
    FGRED=$( tput setaf 1 ) # ff0000
    FGGRN=$( tput setaf 2 ) # 00ff00
    FGYLO=$( tput setaf 3 ) # ffff00
    FGBLU=$( tput setaf 4 ) # 0000ff
    FGMAG=$( tput setaf 5 ) # ff00ff
    FGCYN=$( tput setaf 6 ) # 00ffff
    FGWHT=$( tput setaf 7 ) # ffffff

    BGBLK=$( tput setab 0 ) # 000000
    BGRED=$( tput setab 1 ) # ff0000
    BGGRN=$( tput setab 2 ) # 00ff00
    BGYLO=$( tput setab 3 ) # ffff00
    BGBLU=$( tput setab 4 ) # 0000ff
    BGMAG=$( tput setab 5 ) # ff00ff
    BGCYN=$( tput setab 6 ) # 00ffff
    BGWHT=$( tput setab 7 ) # ffffff

    RESET=$( tput sgr0 )
    BOLDM=$( tput bold )
    UNDER=$( tput smul )
    REVRS=$( tput rev )

    export PS1="\[$BOLDM\]\[$FGWHT\][\[$FGRED\]\A\[$FGWHT\]][\[$FGGRN\]\u\[$FGWHT\]:\[$FGBLU\]\W\[$FGWHT\]]\[$FGYLO\] \$ \[$RESET\]"

#=====================================#
# ~/.bash_aliases | Personnal aliases #
#=====================================#

alias la='ls -a'

# System tools
alias update='sudo yum update'
alias install='sudo yum install'
alias s='yum search'
alias bye='sudo /sbin/shutdown'

# Quick access
alias ..='cd ..'
alias ...='cd ../../../'
alias dl='cd ~/Downloads/'
alias doc='cd ~/Documents/'

# Infos
alias c='clear'
alias disc='df -h /home/'
alias topp='top -b | grep'
alias ping='ping -c 5 www.google.fr'
alias f="find . |grep "

# Config files
alias bash='vim ~/.bashrc'
alias note='vim ~/.notes'
alias tint='vim ~/.config/tint2/tint2rc'
alias vm='vim ~/.vimrc'
alias ck='vim ~/.conkyrc'
alias pk='vim ~/.config/plank/dock1/settings'

# Programs
alias moc='mocp -m /home/raphael/Music -T transparent-background'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
