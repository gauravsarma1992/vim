set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/opt/homebrew/opt/fz
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/L9'
Plugin 'tpope/vim-surround'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'joonty/vim-taggatron'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/fzf'
Plugin 'fatih/vim-go'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'jremmen/vim-ripgrep'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
"

set tags=./tags

syntax on

set autoindent
set expandtab ts=4 sw=4 ai
"set cursorline
"set cursorcolumn
set showcmd
set background=dark
set hlsearch
set incsearch
set expandtab
set wildmenu
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set mouse=a
set clipboard=unnamed

filetype on
filetype plugin on
filetype indent on

autocmd FileType * set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd BufNewFile,BufRead *.go setlocal ts=4 sw=4 sts=4
autocmd FileType go setlocal ts=4 sw=4 sts=4
autocmd FileType python set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab|set autoindent
autocmd FileType ruby set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType javascript set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType css set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType scss set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType html set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent
autocmd FileType erb set tabstop=2|set softtabstop=2|set shiftwidth=2|set expandtab|set autoindent

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap ch :%s/\<<C-r><C-w>\>/
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
nmap <leader>sn :set number<CR>
nmap <leader>snn :set nonumber<CR>
nmap <leader>pst :set paste<CR>
nmap <leader>npst :set nopaste<CR>

" Toggle NERDTree
nmap <leader>n :NERDTreeToggle<CR>

" Remove trailing whitespaces
nmap <leader>pw :%s/\s\+$//e<CR>

" Mouse strategy
nmap <leader>mc :set mouse=c<CR>
nmap <leader>ma :set mouse=a<CR>

" Fold strategy
nmap <leader>fi :set foldenable foldmethod=indent<CR>
nmap <leader>fn :set nofoldenable<CR>

" CTags bindings
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Save keybindings
nmap <leader>s :w<CR>
nmap <leader>ss :wq<CR>
imap <leader>s <Esc>:w<CR>i
imap <leader>ss <Esc>:wq<CR>

" Fzf key bindings
nmap <C-p> :FZF<CR>
imap <C-p> :FZF<CR>

nnoremap <Leader>f :Ack! <cword><CR><Space>
nnoremap <Leader>f :Ack! <cword><CR><Space>

nnoremap <leader>t :CtrlPTag<return>
nnoremap <leader>h :noh<return><esc>
noremap <leader>a ggVG

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set noswapfile

"let g:go_fmt_autosave = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP .'
"let g:ctrlp_working_path_mode = 'ra'
