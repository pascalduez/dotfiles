set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/zsh            " Use zsh as shell


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flowtype/vim-flow'
Plugin 'cakebaker/scss-syntax.vim'

" Jinja2
Plugin 'glench/vim-jinja2-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set title
set number
set ruler
set expandtab
set eol

language en_US.utf8                 " set user interface language to en
set encoding=utf-8                  " allow extended digraphs

set expandtab
set copyindent                      " copy the previous indentation on autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                       " set show matching parenthesis
set autoindent

set number                          " Show line numbers.
set ruler                           " Show cursor position.

set laststatus=2                    " Show the status line all the time

set completeopt=menuone,menu,longest,preview " use a popup for completion

let g:airline_powerline_fonts = 1

syntax enable
