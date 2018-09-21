
"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Plugin management
call plug#begin('~/.vim/bundle')

        Plug 'scrooloose/nerdtree'
        Plug 'scrooloose/nerdcommenter'
        Plug 'twinside/vim-cuteerrormarker'
        Plug 'msanders/snipmate.vim'
        Plug 'itchyny/lightline.vim'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'tpope/vim-eunuch'
        Plug 'w0rp/ale'

call plug#end()


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

"7. Open NERDTree
map <C-f> :NERDTreeToggle<CR>

"8. Autoclose vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 9. Enable filetype detection for Nerd Commenter
filetype plugin on

" 10. Custom settings for nerdcommenter
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_c=1

" Settings for Ale

" 1. Set ale fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" 2. Let ale fix on save
let g:ale_fix_on_save = 1

" 3. Configure completion
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 300

" 4. Ale error/warning settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '!'

" 5. Go to definition shortcut
nmap <C-g> :ALEGoToDefinition

" 6. Close Preview on Insert
let g:ale_close_preview_on_insert = 1



" Aesthetics

" 1. Additional settings for lightline
set laststatus=2
set noshowmode

" lightline.vim colorscheme
let g:lightline = {
        \ 'colorscheme':'seoul256',
        \}
