" cp ./vimrc 	~/.vimrc
set nocompatible
set encoding=utf-8
set smartindent           
set tabstop=2
set shiftwidth=2
set expandtab
set nu                       " show number
set autoindent
set clipboard=unnamedplus    " auto to global clipboard?
set hlsearch                 " highlight search result, :nohl disables highlight
set foldmethod=indent        "fold based on indent
set foldnestmax=5           "deepest fold is 5 levels
"set nofoldenable             "dont fold by default
set foldlevel=1              "this is just what i use

"ignore tmp files 
set nobackup                 " no *~ files
set noswf                    " no *.swap files 

" paste 
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" auto read when a file is changed from the outside
set autoread

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
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-markdown'
Bundle 'thoughtbot/vim-rspec'
Bundle 'kien/ctrlp.vim'  
Bundle 'jQuery'
Bundle 'slim-template/vim-slim'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mrtazz/molokai.vim'

Bundle 'Lokaltog/powerline'
let g:Powerline_symbols='fancy'
set laststatus=2
set noshowmode
set t_Co=256
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts=1

Bundle 'mattn/emmet-vim'
let g:user_zen_settings={
\	'indentation' : '  '
\}

" require!
filetype plugin indent on
