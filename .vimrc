" Alexander Nehrbass

" UI config {{{
let mapleader = " "          " Map <leader> to <space>
set nocompatible            " disable vi compatibility
set number relativenumber   " show line numbers
set hidden                  " better buffer management
set wrap                    " wrap lines
set showcmd                 " show command in bottom bar
set showmode                " show mode in bottom bar
set cursorline              " highlight current line
set lazyredraw              " only redraw when we need to
set showmatch               " highlight matching parenthesis
set wildmenu                " visual autocomplete for command menu
set ruler                   " show line and column number of the cursor
set autoread                " autoreload the file in Vim if modified outside of vim
set laststatus=2            " always show statusline
set nostartofline           " more intuitive movements
set visualbell              " use visual bell instead of beeping
set scrolloff=2             " show more lines above/below when scrolling
set splitbelow splitright   " open split views below are to the right
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
Plugin 'scrooloose/nerdtree.git'            " file system tree
Plugin 'majutsushi/tagbar'                  " show tags of class: requires ctags installation
Plugin 'easymotion/vim-easymotion'          " navigate easier: e.g. '<leader>w'
Plugin 'tpope/vim-surround'                 " change surroundings: e.g. 'cs({'
Plugin 'tpope/vim-commentary'               " allows to comment out things: e.g.'gcc'
" Plugin 'kien/ctrlp.vim'                     " fuzzy finder
Plugin 'Townk/vim-autoclose'                " automatically close ([{'...
Plugin 'vim-scripts/ReplaceWithRegister'    " replace an existing text with the contents of a register: e.g. grw
" Plugin 'scrooloose/syntastic'             " syntax checker
" Plugin 'valloric/youcompleteme'           " code completion

" Git Support
Plugin 'tpope/vim-fugitive'                 " git integration

" UI
Plugin 'sjl/badwolf'                        " colorscheme
Plugin 'vim-airline/vim-airline'            " improved status bar
Plugin 'vim-airline/vim-airline-themes'     " themes for status bar

" Syntax highlighting
Plugin 'peterhoeg/vim-qml'                  " QML syntax highlighting

" init (required)
call vundle#end()
filetype plugin indent on
" }}}

" Colors {{{
syntax enable       " enable syntax processing
colorscheme badwolf " set colorscheme
set t_Co=256
" }}}

" Encoding {{{
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" }}}

" Spaces & Tabs {{{
set textwidth=0     " turn off physical line wrapping
set wrapmargin=0    " turn off physical line wrapping
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

" Searching {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case when searing
set smartcase       " enable case sensitivity when search contains Capital Letters
" }}}

" Spell checking {{{
" Set highlight color
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=red
" Set key mapping to toggle spellchecker
map <F6> :setlocal spell! spelllang=en_us<CR>
" }}}

" Key Mappings {{{
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Easymotion
map  <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" --- Normal mode ---
" Window movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" New lines without entering Insert mode
nnoremap <leader>o o<Esc>j
nnoremap <leader>O O<Esc>k

" --- Insert mode ---
" Append ; at end of the line
inoremap <leader>; <C-o>A;

" --- Visual mode ---
" Copy and Paste to/from system clipboard (requires gvim: 'sudo apt install vim-gtk3')
vnoremap <C-c> "+y
map <C-p> "+P
" }}}

" Vim-Airline Configuration {{{
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
" }}}


" Instructions for a new setup:
" 1. Clone dot-files: git clone git@github.com:AlexBass05/dot-files.git
" 2. Setup Vundle
"       a. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"       b. :PluginInstall
" 3. Setup ctags: github.com/universal-ctags/ctags/blob/master/docs/autotools.rst
"       a. git clone https://github.com/universal-ctags/ctags.git
"       b. cd ctags
"       c. ./autogen.sh
"       d. ./configure
"       e. make
"       f. make install
" 4. Install powerline fonts: sudo apt-get install fonts-powerline (require restart)
