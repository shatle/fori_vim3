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
" zf#j creates a fold from the cursor down # lines.
" zf/ string creates a fold from the cursor to string .
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.
" za toggle a fold at the cursor.
" zo opens a fold at the cursor.
" zO opens all folds at the cursor.
" zc closes a fold under cursor. 
" zm increases the foldlevel by one.
" zM closes all open folds.
" zr decreases the foldlevel by one.
" zR decreases the foldlevel to zero -- all folds will be open.
" zd deletes the fold at the cursor.
" zE deletes all folds.
" [z move to start of open fold.
" ]z move to end of open fold.

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
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" vundle required!
Plugin 'gmarik/Vundle.vim'

" =====
" self-defined 
" =====

" edit rails project in quickly
" :Emodel, :Eview, :Econtroller,  more in :h rails 
Plugin 'tpope/vim-rails' 

" work with git
" :Gstatus, :Gcommit , :Gdiff, :Gread
Plugin 'tpope/vim-fugitive'

" <C-p> enter file in quickly
" <C-f>
Plugin 'kien/ctrlp.vim'  
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" snips
Plugin 'drmingdrmer/xptemplate'
let g:xptemplate_key = '<Tab>'

" auto words in buf
Plugin 'vim-scripts/AutoComplPop'

" Plugin 'jQuery'
Plugin 'shatle/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
" Plugin 'tpope/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'

" indent guides
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup=1
colorscheme default
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" view folder, NERDTree
Plugin 'scrooloose/nerdtree'
" autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" `gcc` comment current line in normal mode
Plugin 'tomtom/tcomment_vim'
" add rust comment style
let g:tcomment_types={'rust': '/// %s'}

" 
Plugin 'junegunn/vim-easy-align'
vnoremap <silent> <Enter> :EasyAlign<cr>

" .head+.content , then Enter: Ctrl+y+,
Plugin 'mattn/emmet-vim'
let g:user_zen_settings={
\	'indentation' : '  '
\}

" Theme 
Plugin 'Lokaltog/powerline'
let g:Powerline_symbols='fancy'
set laststatus=2
set noshowmode
set t_Co=256
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1

Plugin 'rust-lang/rust.vim'

" require!
call vundle#end()
filetype plugin indent on
