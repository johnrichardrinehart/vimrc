""" John's vimrc setting
" set shellslash
set nocompatible
let g:tex_flavor='latex'
nnoremap <silent> <Leader>` :let @/=""<CR>
set incsearch
set hlsearch
set autoindent
set history=50
set ruler
set showcmd
set showmode
set foldcolumn=4
set number
set numberwidth=4
autocmd Filetype css setlocal softtabstop=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80
syntax enable
set backupext=.bak
syntax enable
let g:solarized_termtrans=1
set background=light
colorscheme solarized
set timeoutlen=300
set backspace=indent,eol,start
autocmd BufNewFile,BufRead *.tex set spell spelllang=en_us
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
endif
set autochdir
setglobal guioptions=
if has('gui_running')
    set guifont=Consolas:h10:cANSI
endif
set lines=20 columns=80
nmap <F2> :wa<CR>:mksession! $HOME/vim_session<CR> " Write session to file
nmap <F3> :wa<CR>:source $HOME/vim_session<CR> " Load session from file
