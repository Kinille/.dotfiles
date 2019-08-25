alias top="htop"
alias webserv="ssh pi@192.168.3.102"
alias li="light"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# ls Stuff
alias ls='ls -Isnap --color=auto'
alias ll='ls -alF'
alias la='\ls -A --color=auto'
alias l='ls -CF'

# Default to Python 3
alias python='python3'

# Check VPN status
alias ins='nordvpn status'

# Function for making a directory then moving into it
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# Function to move into a directory and immediately list its contents
cs ()
{
	cd "$@" &&
	ls
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='paplay /usr/share/sounds/freedesktop/stereo/complete.oga && notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alert with no sound
alias alertn='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# For a relaxing bash experience
alias please='sudo'
