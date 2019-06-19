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


" 4. Flake8


" 5. youcompleteme (Python)
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'


"""""""""""""""""""""""""""""
" Aesthetic Plugin settings "
"                           "
"""""""""""""""""""""""""""""

" GruvBox
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_italicize_comments = 1

" Vim-Airline Settings

" Color Scheme
let g:airline_theme='gruvbox'

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Vim/NVim Color Scheme
colorscheme gruvbox
