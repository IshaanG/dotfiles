<div align="center">
  <img alt="Logo" src="https://raw.githubusercontent.com/IshaanG/dotfiles/master/logo.png" width="500">
</div>


# tracking dotfiles with git
```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```

# to replicate
```bash
git clone --bare https://github.com/IshaanG/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
config checkout -f
```
