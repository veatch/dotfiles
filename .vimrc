" required by vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'alfredodeza/khuno.vim'
Plugin 'tpope/vim-surround'
"Plugin 'klen/python-mode'

let g:khuno_max_line_length=120
let g:khuno_ignore="E128"

filetype plugin indent on     " required by vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on

" vundle folds by default. start with all open
set foldlevelstart=20

autocmd BufWritePre *.py :%s/\s\+$//e

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
 
set hlsearch
set incsearch
set showmatch
 
set number

" set working dir to current file
autocmd BufEnter * silent! lcd %:p:h

set wildmode=longest,list
set wildmenu

" keyboard shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
