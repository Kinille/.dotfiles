# My System Customization
#### Primarily for debian based systems

## Setup
Basically this: [Here](https://www.atlassian.com/git/tutorials/dotfiles)
I've condensed what I need from this in this repo for my own uses.

* Commit alias to the system environment (more permanent alias stored in .bash_aliases)
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

* Ignore repository file in order to avoid recursion problems
```
echo ".cfg" >> .gitignore
```

* Clone Repository
```
git clone --bare https://github.com/Kinille/.dotfiles $HOME/.cfg
```

* Download the files with checkout (remember to delete/back up any files to be overwritten)
```
dotfiles checkout
```

#### Basic Commands
* `dotfiles add -u` Adds any modified files in the repo to the index for commiting and pushing
* `dotfiles commit -m "message here"` Commits the current index
* `dotfiles push` pushes the commited changes to master. Might require login if ssh key is unavailable.
