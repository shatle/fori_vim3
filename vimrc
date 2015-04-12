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
set nofoldenable             "dont fold by default
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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle required!
Plugin 'gmarik/Vundle.vim'

" self-defined 
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'thoughtbot/vim-rspec'

Plugin 'kien/ctrlp.vim'  
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

Plugin 'jQuery'
Plugin 'shatle/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mrtazz/molokai.vim'

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup=1
colorscheme default
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

Plugin 'scrooloose/nerdtree'
" autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" `gcc` comment current line in normal mode
Plugin 'tomtom/tcomment_vim'

Plugin 'junegunn/vim-easy-align'
vnoremap <silent> <Enter> :EasyAlign<cr>

Plugin 'Lokaltog/powerline'
let g:Powerline_symbols='fancy'
set laststatus=2
set noshowmode
set t_Co=256
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1

Plugin 'mattn/emmet-vim'
let g:user_zen_settings={
\	'indentation' : '  '
\}


" require!
call vundle#end()
filetype plugin indent on
