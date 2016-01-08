let g:vimtex_fold_enabled=0
let g:vimtex_latexmk_progname='gvim'
"let g:vimtex_quickfix_ignore_all_warnings=0
let g:vimtex_view_general_viewer = 'SumatraPDF'
" Below, I had to remove the recorder option because Perl for Windows has
" trouble with this
"let g:vimtex_latexmk_options = '-recorder-' 
"let g:vimtex_latexmk_options = '-pdflatex="lualatex %O %S" -interaction=nonstopmode'
let g:vimtex_latexmk_options = '-lualatex -interaction=nonstopmode -recorder-'
