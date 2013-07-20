" cp ./vimrc 	~/.vimrc
set nocompatible
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set autoindent
set smartindent
set clipboard=unnamedplus
set hlsearch
syntax on

" require!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle required!
Bundle 'gmarik/vundle'

" self-defined 
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'jQuery'
Bundle 'kchmck/vim-coffee-script'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'vim-scripts/AutoComplPop'

Bundle 'mattn/zencoding-vim'
let g:user_zen_settings={
\	'indentation' : '  '
\}

" require!
filetype plugin indent on
