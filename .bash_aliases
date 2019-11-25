alias top="htop"
alias webserv="ssh pi@192.168.3.102"
alias webservx="ssh pi@69.169.170.91"
alias li="light"

# Manage dotfiles version control
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Manage personal wiki version control
alias diary="/usr/bin/git --git-dir=$HOME/.wwiki/.git --work-tree=$HOME/.wwiki"
alias di='diary'

# ls Stuff
alias ls='ls -Isnap --color=auto'
alias ll='ls -alF'
alias la='\ls -A --color=auto'
alias l='ls -CF'

# Default to Python 3
alias python='python3'

# Check VPN status
alias ins='nordvpn status'

# Update and upgrade
alias uptodate='sudo apt update -y; sudo apt upgrade -y'

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

# Alias rm to use trash client to possibly recover files
alias rm=trash

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='paplay /usr/share/sounds/freedesktop/stereo/complete.oga && notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# Alert with no sound
alias alertn='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# For a relaxing bash experience
alias please='sudo'

# Randomize background
alias newbg='feh --randomize --bg-scale ~/Pictures/Backgrounds/'
