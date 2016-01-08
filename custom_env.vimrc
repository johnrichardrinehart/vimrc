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

" The below is from http://vim.wikia.com/wiki/Nice_window_resizing
" Map F1 for gvim window resizing.
" Put this snippet of code in your vimrc for nice window resizing.
" Press F1 key to toggle between the three settings.
nmap <F1> :call ResizeWindow()<CR>
imap <F1> <Esc><F1>a| " for insert mode
function! ResizeWindow()
  if (has("gui_running"))
    if s:selectedsize == 1
      let s:selectedsize = 2
      set number
      set columns=88 " 88 is exactly 80 with :set number
      set lines=35
    elseif s:selectedsize == 2
      set number
      let s:selectedsize = 3
      set columns=98
      set lines=45
    else " old school console goodness
      let s:selectedsize = 1
      set nonumber
      set columns=120
      set lines=60
    endif
  endif
endfunction
let s:selectedsize=1
call ResizeWindow()
