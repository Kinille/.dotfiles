alias top="htop"
alias webserv="ssh pi@192.168.3.102"
alias li="light"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

#ls Stuff
alias ls='ls -Isnap --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Function for making a directory then moving into it
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

#For a relaxing bash experience
alias please='sudo'
