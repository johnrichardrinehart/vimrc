" BASIC SETTINGS
colors desert
syntax enable
filetype plugin indent on
" LETS AND SETS
let g:tex_flavor='latex'
set autochdir
set autoindent
set background=dark
set backspace=indent,eol,start
set backupext=.bak
set display+=lastline " removes @ symbol from margin on long lines
set expandtab
set foldcolumn=4
set guioptions=
set history=50
set hlsearch
set incsearch
set laststatus=2 " Turn on status bar always (even for no splits) 
set number
set numberwidth=4
set ruler
set shiftwidth=3
set showcmd
set showmode
set softtabstop=3
set splitbelow
set tabstop=3
set textwidth=80
set timeoutlen=300
set wildmenu
set wildmode=longest,list,full
" REMAPS
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
nmap <F1> :call ResizeWindow()<CR>| " src: http://vim.wikia.com/wiki/Nice_window_resizing
imap <F1> <Esc><F1>a| " for insert mode
vmap <Leader>x :!tidy -q -i --show-errors 0<CR>| " Use HTML Tidy
" Allow for persistent undo
" src: http://stackoverflow.com/questions/5700389/using-vims-persistent-undo
if has('persistent_undo')
   let &undodir = expand('~/vimfiles/undodir') " store undo history in file for persistence
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

" COMMANDS
command DiffOrig vert new | set bt=nofile | r ++edit # | d_
         \ | diffthis | wincmd p | diffthis

" FUNCTIONS
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
