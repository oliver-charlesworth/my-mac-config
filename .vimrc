set nocompatible

" Random
set foldenable
set hidden
set backspace=indent,eol,start
set mouse=a

" Don't create irritating files
set noswapfile
set nobackup

" Tabs, etc.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set smarttab

" Syntax highlighting
syntax on
filetype plugin indent on

" Persistent undo
set undofile
set undolevels=10000
set undoreload=10000
set undodir=~/.vim/undo

" Search
set hlsearch
set incsearch

" Appearance
set number
set ruler
set showmatch
set background=dark
colorscheme solarized

" Key mappings
set pastetoggle=<F10>

