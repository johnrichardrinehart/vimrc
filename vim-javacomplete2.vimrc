autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java nmap <F4> <Plug>(JavaComplete-Imports-Add)
autocmd Filetype java nmap <F4> <Plug>(JavaComplete-Imports-Add)
autocmd Filetype java nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)
autocmd Filetype java imap <F5> <Plug>(JavaComplete-Imports-AddMissing)
autocmd Filetype java nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd Filetype java imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)
