set nocompatible
execute pathogen#infect()

"----------------------
" Random
"----------------------
set foldenable
set hidden
set backspace=indent,eol,start
set mouse=a

" Don't create irritating files
set noswapfile
set nobackup

"----------------------
" Tabs, etc.
"----------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set smarttab

"----------------------
" Syntax highlighting
"----------------------
syntax on
filetype plugin indent on

"----------------------
" Persistent undo
"----------------------
set undofile
set undolevels=10000
set undoreload=10000
set undodir=~/.vim/undo

"----------------------
" Search
"----------------------
set hlsearch
set incsearch

"----------------------
" Appearance
"----------------------
set number
set ruler
set showmatch
set background=dark
"colorscheme solarized
"set list
"set listchars=tab:\|_,trail:.,extends:#,nbsp:.
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=green
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black
let g:indent_guides_enable_on_vim_startup = 1

"----------------------
" Key mappings
"----------------------
let mapleader=" "

set pastetoggle=<F10>

nmap <C-y> "+y
nmap <C-p> "+p
vmap <C-y> "+y
vmap <C-p> "+p

"----------------------
" Other stuff
"----------------------
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

au BufReadCmd *.par,*.ont call zip#Browse(expand("<amatch>"))
