" cp ./vimrc 	~/.vimrc
set nocompatible
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set nu                       " show number
set autoindent
set smartindent           
set clipboard=unnamedplus    " auto to global clipboard?
set hlsearch                 " highlight search result, :nohl disables highlight
set foldmethod=indent        "fold based on indent
set foldnestmax=5           "deepest fold is 5 levels
"set nofoldenable             "dont fold by default
set foldlevel=1              "this is just what i use

set nobackup                 " no *~ files
set noswf                    " no *.swap files 
syntax on

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
Bundle 'tpope/vim-haml'
Bundle 'kien/ctrlp.vim'
Bundle 'jQuery'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mrtazz/molokai.vim'

Bundle 'mattn/emmet-vim'
let g:user_zen_settings={
\	'indentation' : '  '
\}

" require!
filetype plugin indent on
