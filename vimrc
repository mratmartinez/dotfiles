set encoding=utf-8
let mapleader = " "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'Alvarocz/vim-fresh'
Plugin 'https://github.com/devnul1/heman'
Plugin 'https://github.com/buc0/my-vim-colors'
call vundle#end()            " required
filetype plugin indent on    " required

let g:flake8_cmd="/home/mrat/.local/bin/flake8"
autocmd BufWritePost *.py* call Flake8()

set number
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <Leader><Leader> za

" Docstring on SimplyFold
let g:SimpylFold_docstring_preview=1

" PEP8, Ladies
au BufNewFile,BufRead *.py*
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" More YCM stuff
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Syntax
let python_highlight_all=1
syntax on
" colorscheme fresh
" colorscheme heman
colorscheme bdconry

set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing<Paste>
set textwidth=0
set wrapmargin=0
