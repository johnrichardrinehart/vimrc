" Java options below
autocmd Filetype java set makeprg=javac\ %
autocmd FileType java errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
autocmd FileType java noremap <F9> :make<Return>:copen<Return>
autocmd FileType java noremap <F10> :cprevious<Return>
autocmd FileType java noremap <F11> :cnext<Return>
