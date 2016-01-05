" Java options below
autocmd Filetype java setlocal makeprg=javac\ %
autocmd FileType java setlocal errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
autocmd FileType java nnoremap <F9> :make<Return>:copen<Return>
autocmd FileType java nnoremap <F10> :cprevious<Return>
autocmd FileType java nnoremap <F11> :cnext<Return>
