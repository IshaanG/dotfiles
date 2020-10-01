unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set mouse=a
set clipboard=unnamedplus
filetype plugin on
syntax on
filetype indent on
set relativenumber
set viminfo='10000,<100000,:100000,%,n~/.vim/.viminfo

set background=dark
autocmd vimenter * colorscheme gruvbox
