" required by vundle
set nocompatible
filetype on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'alfredodeza/khuno.vim'
Plugin 'tpope/vim-surround'
call vundle#end()

let g:khuno_max_line_length=120
let g:khuno_ignore="E128"

filetype plugin indent on     " required by vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on

" vundle folds by default. start with all open
set foldlevelstart=20

set guifont=Menlo\ Regular:h13

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
set ruler

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

" disable sounds
set noerrorbells 
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

" Column color at 80 character mark
set cc=80
