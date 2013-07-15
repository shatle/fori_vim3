" cp ./vimrc 	~/.vimrc
set nocompatible
set encoding=utf-8
set tabstop=2
set nu
syntax on
set autoindent
set smartindent

" require!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle required!
Bundle 'gmarik/vundle'

" self-defined 
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'jQuery'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/AutoComplPop'

" require!
filetype plugin indent on




