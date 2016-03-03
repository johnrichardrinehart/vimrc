nmap <F9> <plug>(vimtex-compile-toggle)
" let g:vimtex_mapping_enabled = 0
let g:vimtex_imaps_leader = '@'
let g:vimtex_fold_enabled = 0
let g:vimtex_latexmk_progname='gvim'
let g:vimtex_view_general_viewer = 'SumatraPDF'
" Below, I had to remove the recorder option because Perl for Windows has
" trouble with this
"let g:vimtex_latexmk_options='-recorder- -pdflatex="lualatex --shell-escape --interaction=nonstopmode"'
" let g:vimtex_latexmk_options='-pdf
"let g:vimtex_delim_toggle_mod_list = [
"         \ ['\left', '\right'],
"         \ ['\bigl', '\bigr'],
"         \ ['\Bigl', '\Bigr'],
"         \ ['\biggl', '\biggr'],
"         \ ['\Biggl', '\Biggr'],
"         \ ['\big', '\big'],
"         \ ['\Big', '\Big'],
"         \ ['\bigg', '\bigg'],
"         \ ['\Bigg', '\Bigg'],
"         \]
