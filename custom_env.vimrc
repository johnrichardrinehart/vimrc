"<<<< John's vimrc settings >>>>"
" Put plugins and dictionaries in this dir (also on Windows)
colors desert
syntax enable
filetype plugin indent on
set wildmode=longest,list,full
set wildmenu
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
set laststatus=2 " Turn on status bar even for no splits
set splitbelow
set expandtab
set tabstop=3
set shiftwidth=3
set softtabstop=3
set textwidth=80
set backupext=.bak
set background=dark
set timeoutlen=300
set backspace=indent,eol,start
set autochdir
set guioptions=
" Remove the @ symbol from the margin when the lines are too long
set display+=lastline
" Allow for persistent undo
" src: http://stackoverflow.com/questions/5700389/using-vims-persistent-undo
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let &undodir = expand('~/vimfiles/undodir')
   set undofile
endif
if has("multi_byte")
   if &termencoding == ""
      let &termencoding = &encoding
   endif
   set encoding=utf-8
   setglobal fileencoding=utf-8
endif
if has('gui_running')
   set guifont=Consolas:h10:cANSI
endif
let g:tex_flavor='latex'
nnoremap <silent> <Leader>` :let @/=""<CR>
autocmd Filetype css setlocal softtabstop=2
autocmd BufNewFile,BufRead *.tikz set filetype=tex " type(TiKZ) = type(TeX)
autocmd BufNewFile,BufRead * hi SpellCap ctermfg=green guifg=green
autocmd BufNewFile,BufRead *.tex,*.rst,*.txt,*.md setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.tex,*.rst,*.txt,*.md setlocal spellfile=
autocmd BufNewFile,BufRead *.tikz setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType julia nnoremap <buffer> <F9> :!start /b julia %<return>
nmap <F2> :wa<CR>:mksession! $HOME/vim_session<CR> " Write session to file
nmap <F3> :wa<CR>:source $HOME/vim_session<CR> " Load session from file
" Autosave LaTeX files after so much time editing
" set updatetime=1000 " milliseconds
" autocmd CursorHold,CursorHoldI *.tex silent update
" src:  http://vim.wikia.com/wiki/Nice_window_resizing
" Map F1 for gvim window resizing.
nmap <F1> :call ResizeWindow()<CR>
imap <F1> <Esc><F1>a| " for insert mode
" Use HTML Tidy to tidy up my html in visual mode
vmap <Leader>x :!tidy -q -i --show-errors 0<CR>

command DiffOrig vert new | set bt=nofile | r ++edit # | d_
         \ | diffthis | wincmd p | diffthis

" Allow the gvim window to take on different sizes with <F1>
function! ResizeWindow()
let s:selectedsize=1
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
