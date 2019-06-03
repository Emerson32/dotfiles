" Plugin specific settings

" 1. NerdTree

" Autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enable filetype detection for Nerd Commenter
filetype plugin on

" Additional Settings
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_c=1

" 2. Ale

" Set ale fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

" Fix on save
let g:ale_fix_on_save = 1

" Completion settings
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 300

" Error/Warning settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '!'

" 3. Deoplete

" Enable
let g:deoplete#enable_at_startup = 1

" 4. Flake8

"""""""""""""""""""""""""""""
" Aesthetic Plugin settings "
"                           "
"""""""""""""""""""""""""""""

" Vim-Airline Settings

" Color Scheme
let g:airline_theme='tomorrow'

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Vim/NVim Color Scheme
colorscheme monoacc
