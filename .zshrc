# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ig/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1

source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias rm='rm -I'
alias cinkill="ps -ef | grep cin | grep -v grep | awk '{print \$2}' | xargs kill"
alias won="nmcli radio wifi on"
alias woff="nmcli radio wifi off"
alias bon="sudo rfkill unblock bluetooth;bluetoothctl power on;bluetoothctl connect C4:6E:7B:F9:F4:D2"
alias gpc="sudo g++ -O2 -std=gnu++17 -Wall -Wextra -Wshadow -Wno-sign-conversion -DIG_PC -D_GLIBCXX_DEBUG /usr/include/c++/10.2.0/x86_64-pc-linux-gnu/bits/stdc++.h"
alias gp="git add .; git commit -m \"\`date +'%Y-%m-%d %H:%M:%S'\`\"; git push"
alias note="touch \`date +%Y_%m_%d.md\`; echo \"# \`date +%d/%m/%Y\`\" >> \`date +%Y_%m_%d\`.md; code \`date +%Y_%m_%d\`.md"
alias windows="systemctl reboot --boot-loader-entry=auto-windows"
alias dumppkg="pacman -Qqe > $HOME/pkglist"

function yta() {
    mpv --no-resume-playback --no-video ytdl://ytsearch:"$*"
}

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
