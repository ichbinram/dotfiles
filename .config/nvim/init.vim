" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Tools
    Plug 'vifm/vifm.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'mhinz/vim-signify'
    Plug 'Krasjet/auto.pairs'
" Syntax
    Plug 'tpope/vim-markdown'
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS 
    Plug 'vim-scripts/fountain.vim'
" Color-schemes
    Plug 'morhetz/gruvbox' "My favorite theme
    Plug 'dylanaraps/wal.vim' "My wallpaper dependant theme
    Plug 'kristijanhusak/vim-hybrid-material' 
    Plug 'jacoborus/tender.vim' 
    Plug 'ajh17/Spacegray.vim' 
    Plug 'NLKNguyen/papercolor-theme'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"General settings
set encoding=UTF-8          " set the universal text encoding
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
" set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch is                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number relativenumber   " add line numbers
set nu rnu
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
"set mouse=a                 " enable mouse click
"set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                 " enable spell check (may need to download language package)
set backspace=indent,eol,start confirm " set backspace to reverse the spacing
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

source $HOME/.config/nvim/plug-config/coc.vim

let mapleader=" "
map <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>n :Explore<CR>

map <F1> :colorscheme gruvbox<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
map <F5> :colorscheme spacegray<CR>
map <F2> :colorscheme wal<CR>
map <F6> :colorscheme tender<CR>
"Color Settings
colorscheme gruvbox
set background=dark cursorline 
"set termguicolors
" Turn this back on if you stop using pywal

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
