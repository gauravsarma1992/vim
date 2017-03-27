set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/L9'
"Plugin 'vim-scripts/FuzzyFinder'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'joonty/vim-taggatron'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
"
syntax on

set autoindent
set cursorline
set cursorcolumn
set showcmd
set hlsearch
set incsearch
set expandtab
set wildmenu
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:->

filetype on
filetype plugin on
filetype indent on


autocmd FileType * set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType python set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType ruby set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType javascript set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType css set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType scss set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType html set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType erb set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap ch :%s/\<<C-r><C-w>\>/
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nmap <leader>sn :set number<CR>
nmap <leader>snn :set nonumber<CR>
nmap <leader>s :w<CR>
nmap <leader>ss :wq<CR>
imap <leader>s <Esc>:w<CR>i
imap <leader>ss <Esc>:wq<CR>
nnoremap <leader>h :noh<return><esc>
noremap <leader>a ggVG

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_working_path_mode = 'ra'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

