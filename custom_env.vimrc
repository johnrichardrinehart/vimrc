"<<<< John's vimrc settings >>>>"
" Put plugins and dictionaries in this dir (also on Windows)
" cd $HOME
" The below did_install_default_menus was added because at some point I
" was getting a menu.vim error at startup
" let did_install_default_menus = 1
set laststatus=2 " Turn on status bar even for no splits
filetype plugin indent on
set shellslash
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
autocmd BufNewFile,BufRead *.tikz set filetype=tex " type(TiKZ) = type(TeX)
set expandtab
set tabstop=3
set shiftwidth=3
set softtabstop=3
set textwidth=80
syntax enable
set backupext=.bak
syntax enable
let g:solarized_termtrans=1
set background=light
colorscheme solarized
set timeoutlen=300
set backspace=indent,eol,start
autocmd BufNewFile,BufRead *.tex,*.rst,*.txt,*.md setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.tikz setlocal tabstop=2 shiftwidth=2 softtabstop=2
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
nmap <F2> :wa<CR>:mksession! $HOME/vim_session<CR> " Write session to file
nmap <F3> :wa<CR>:source $HOME/vim_session<CR> " Load session from file
" Remove the @ symbol from the margin when the lines are too long
set display+=lastline
" Autosave LaTeX files after so much time editing
" set updatetime=1000 " milliseconds
" autocmd CursorHold,CursorHoldI *.tex silent update
" src:  http://vim.wikia.com/wiki/Nice_window_resizing
" Map F1 for gvim window resizing.
nmap <F1> :call ResizeWindow()<CR>
imap <F1> <Esc><F1>a| " for insert mode
" Use HTML Tidy to tidy up my html in visual mode
vmap <Leader>x :!tidy -q -i --show-errors 0<CR>

if has('win32') && has('gui_running')
   "Below commented 'set lines' doesn't work with PuTTY in console vim
   set lines=20 columns=80
endif

" Allow the gvim window to take on different sizes with <F1>
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
" Allow for persistent undo
" src: http://stackoverflow.com/questions/5700389/using-vims-persistent-undo
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let &undodir = expand('~/vimfiles/undodir')
   set undofile
endif
