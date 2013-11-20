set nocompatible
set relativenumber
set hlsearch
set tabstop=4
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized
set <Del>=
set pastetoggle=<F10>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
