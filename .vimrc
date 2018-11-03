" Alexander Nehrbass

" UI config {{{
set nocompatible    " disable vi compatibilty
set number          " show line numbers
set hidden          " better buffer management
set wrap            " wrap lines
set showcmd         " show command in bottom bar
set showmode        " show mode in bottom bar
set cursorline      " highlight current line
set lazyredraw      " only redraw when we need to
set showmatch       " hightlight matching parathesis
set wildmenu        " visual autocomplete for command menu
set ruler           " show line and column number of the cursor
set autoread        " autoreload the file in Vim if modified outside of vim
set laststatus=2    " always show statusline
set mouse=a         " enable mouse support (doesn't work well on Mac OS)
set nostartofline   " more intuitive movements
set visualbell      " use visual bell instead of beeping
set scrolloff=2     " show more lines above/below when scrolling
" }}}

" Vundle Setup {{{

" start (required)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim   " set Vundle runtime path
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree.git'
Plugin 'majutsushi/tagbar'          " requires ctags installation: //github.com/universal-ctags/ctags/blob/master/docs/autotools.rst
 

Plugin 'humiaozuzu/tabbar'

" init (required)
call vundle#end()
filetype plugin indent on
" }}}

" Colors {{{
syntax enable       " enable syntas processing
colorscheme badwolf " cp ~/.vim/colors/badwolf.vim
" }}}

" Encoding {{{
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" }}}

" Spaces & Tabs {{{
set tabstop=4       " number of spaces tab
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces for indentation
set expandtab       " use spaces for tabs
set autoindent      " automatic indentation
set smartindent     " even better indentation
" }}}

" Whitespace chars {{{
set list
set listchars=tab:>·,trail:·,extends:>,precedes:<
" }}}

" Searcing {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case when searing
set smartcase       " enable case sensitivity when search contains Capitial Letters
" }}}

" Key Mappings {{{

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Window movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}
