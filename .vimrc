
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

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
set tabstop=8
set shiftwidth=8
set expandtab
set smarttab autoindent

set textwidth=79
set colorcolumn=-2
packadd! matchit

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


" Convenience mappings

"1. Leader-related mappings
let mapleader = ","

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i       

"2. Create a new-line above cursor in normal mode
noremap gO O<ESC>j

"3. Create a new-line below cursor in normal mode
noremap g<C-O> o<ESC>k

"4. Auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap n nzz
nmap } }zz
nmap { {zz

"5. Map Caps Lock to Escape when  entering vim
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"6. Map Escape to Caps Lock when exiting vim 
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
