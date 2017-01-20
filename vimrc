if has("win32")
	let vimdir="~/vimfiles"
else
	let vimdir="~/.vim"
endif
exec "source " . expand(vimdir) . "/vundle.vimrc"
exec "source " . expand(vimdir) . "/custom_env.vimrc"
exec "source " . expand(vimdir) . "/ultisnips.vimrc"
exec "source " . expand(vimdir) . "/vimtex.vimrc"
exec "source " . expand(vimdir) . "/java.vimrc"
exec "source " . expand(vimdir) . "/go.vimrc"
exec "source " . expand(vimdir) . "/julia.vimrc"
exec "source " . expand(vimdir) . "/neocomplete.vimrc"
exec "source " . expand(vimdir) . "/vim-javacomplete2.vimrc"
exec "source " . expand(vimdir) . "/vim-slime.vimrc"
