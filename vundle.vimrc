""" Vundle settings below
set nocompatible
filetype off " required
" set the runtime path to include Vundle and initialize
exec "set rtp+=" . expand(vimdir) . "/bundle/Vundle.vim"
call vundle#begin(expand(vimdir).'/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-surround'
Plugin 'yegappan/mru'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'JuliaLang/julia-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'jpalardy/vim-slime'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/zoom.vim'
" Unused plugins below
call vundle#end() " required
