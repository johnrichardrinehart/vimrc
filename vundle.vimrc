""" Vundle settings below
set nocompatible
filetype off " required
" set the runtime path to include Vundle and initialize
exec "set rtp+=" . escape(expand(vimdir),' ')  . "/bundle/Vundle.vim"
call vundle#begin(expand(expand(vimdir),' ') . '/bundle')
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
Plugin 'jpalardy/vim-slime'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/zoom.vim'
Plugin 'godlygeek/csapprox'
Plugin 'chrisbra/csv.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'danro/rename.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/gundo.vim'
Plugin 'henrik/vim-indexed-search'
Plugin 'plasticboy/vim-markdown'
call vundle#end() " required
