""" Vundle settings below
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME\vimfiles\bundle\Vundle.vim
call vundle#begin('$HOME\vimfiles\bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'yegappan/mru'
Plugin 'ervandew/supertab'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
" Plugin 'JuliaLang/julia-vim'
"Plugin 'YCM',{'pinned':1}
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-shell'
call vundle#end() " required
filetype plugin indent on
