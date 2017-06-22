let g:vcm_default_maps = 0
autocmd BufEnter * let b:vcm_omni_pattern="{"
autocmd BufEnter * let g:vcm_default_maps = 0
autocmd BufEnter * imap <C-Tab> <plug>vim_completes_me_forward
