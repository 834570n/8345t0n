syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set nu
set wrap
set noshiftround
set autoindent
set showmatch
set visualbell
set encoding=utf-8
set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set noswapfile
set nobackup
set incsearch
set scrolloff=8

filetype on
filetype plugin on
filetype indent on

let python_highlight_all=1

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'valloric/youcompleteme'

call plug#end()

colorscheme molokai
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
\| endif

let mapleader = " "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
