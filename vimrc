if has("win32")
	let vimdir="~/vimfiles"
else
	let vimdir="~/.vim"
endif
exec "source " . escape(expand(vimdir),' ') . "/" . "vim-plug.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "ultisnips.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "vimtex.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "java.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "go.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "julia.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "vimcompletesme.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "vim-javacomplete2.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "vim-slime.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "gotags.vimrc"
"exec "source " . escape(expand(vimdir),' ') . "/" . "neocomplete.vimrc"
exec "source " . escape(expand(vimdir),' ') . "/" . "custom_env.vimrc"
