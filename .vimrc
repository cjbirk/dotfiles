set nocompatible
set pastetoggle=<F3>
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your plugins go under here
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'Valloric/YouCompleteMe'

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
set modelines=0

" Smart Indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set expandtab
set smarttab
set autoindent
set hidden
" I am blind, errors need to stand out.
let g:syntastic_error_symbol = "💩"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_mode_map = { 'mode': 'active',
         \ 'active_filetypes': ['php', 'ruby', 'javascript', 'puppet', 'python'], }

syn on
set number
syntax enable
set backspace=indent,eol,start

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>
