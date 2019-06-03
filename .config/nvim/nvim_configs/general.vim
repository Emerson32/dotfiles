" General formatting settings
set autoindent
set number
set relativenumber
set incsearch
set ruler
set showcmd
set nohls
set nocp
set noic
syntax on

" Tab options
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab autoindent

set textwidth=80
set colorcolumn=-2
"packadd! matchit

" Map <up> and <down> to move current line
noremap <Up> ddkP
noremap <Down> ddp


" Remove other arrow key functionality
nmap <Left> <Nop>
nmap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

""""""""""""""""""""""
" General Appearance "
"                    "
""""""""""""""""""""""

set laststatus=2
set noshowmode
