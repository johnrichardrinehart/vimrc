nmap <F9> <plug>(vimtex-compile-toggle)
" let g:vimtex_mapping_enabled = 0
let g:vimtex_imaps_leader = '_'
let g:vimtex_fold_enabled = 0
let g:vimtex_latexmk_progname='gvim'
let g:vimtex_view_general_viewer = 'SumatraPDF'
" Below, I had to remove the recorder option because Perl for Windows has
" trouble with this
let g:vimtex_latexmk_options = '-lualatex -interaction=nonstopmode -recorder-'
