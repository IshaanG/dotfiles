<img align="center" src="https://raw.githubusercontent.com/IshaanG/dotfiles/master/logo.png">

# tracking dotfiles with git
    $ git init --bare ~/.dotfiles
    $ alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
    $ config config status.showUntrackedFiles no

# to replicate
    $ git clone --separate-git-dir=$HOME/.dotfiles https://github.com/IshaanG/dotfiles.git $HOME/.dotfiles-tmp
    $ cp -r ~/.dotfiles-tmp/* ~
    $ rm -r ~/.dotfiles-tmp
    $ alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
    $ config config status.showUntrackedFiles no
