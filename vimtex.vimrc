nmap <F9> <plug>(vimtex-compile)
"let g:vimtex_view_automatic = 0
let g:vimtex_compiler_latexmk = {'backend' : 'nvim',}
let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_mapping_enabled = 0
let g:vimtex_imaps_leader = '@'
"let g:vimtex_fold_enabled = 0
"let g:vimtex_quickfix_fix_paths = 1
if has("win32")
   let g:vimtex_view_general_viewer = 'SumatraPDF'
   "let g:vimtex_latexmk_progname='gvim'
   "let g:vimtex_compiler_progname = 'gvim'
"elseif has("unix")
   "let g:vimtex_view_general_viewer = 'mupdf'
   "let g:vimtex_latexmk_progname='vim'
endif
"" let g:vimtex_latexmk_options='-pdflatex="lualatex --shell-escape --interaction=nonstopmode" -synctex=0 -pdf'
"let g:vimtex_quickfix_open_on_warning=0
"let g:vimtex_latexmk_options='--shell-escape --interaction=nonstopmode -synctex=0 -pdf'
"let g:vimtex_delim_toggle_mod_list = [
         "\ ['\left', '\right'],
         "\ ['\bigl', '\bigr'],
         "\ ['\Bigl', '\Bigr'],
         "\ ['\biggl', '\biggr'],
         "\ ['\Biggl', '\Biggr'],
         "\ ['\big', '\big'],
         "\ ['\Big', '\Big'],
         "\ ['\bigg', '\bigg'],
         "\ ['\Bigg', '\Bigg'],
         "\ ]
""let g:vimtex_quickfix_ignored_warnings = [
         ""\ 'Underfull',
         ""\ 'Overfull',
         ""\ 'specifier changed to',
         ""\ ]

""if !exists('g:neocomplete#sources#omni#input_patterns')
   ""let g:neocomplete#sources#omni#input_patterns = {}
""endif
""let g:neocomplete#sources#omni#input_patterns.tex =
         ""\ '\v\\%('
         ""\ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
         ""\ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
         ""\ . '|hyperref\s*\[[^]]*'
         ""\ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
         ""\ . '|%(include%(only)?|input)\s*\{[^}]*'
         ""\ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
         ""\ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
         ""\ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
         ""\ . ')'
