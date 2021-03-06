See [this page](http://vim-scripts.org/vim/scripts.html) for a list that connects the 
[vim.org/scrips](http://www.vim.org/scripts) script number to the matching github repo!

To add a submodule you need to (from the .vim directory):

1. git submodule add GIT_URL bundle/MODULE_NAME
1. commit and push changes

To remove a submodule you need to:

1. Delete the relevant line from the .gitmodules file.
1. Delete the relevant section from .git/config.
1. Run git rm --cached path_to_submodule (no trailing slash).
1. Commit and delete the now untracked submodule files.

bufexplorer (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=42)
*   [github](https://github.com/markabe/bufexplorer)

colorsupport (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2682)
*   [github](https://github.com/vim-scripts/colorsupport.vim)

column-math (built-in)

*   This is an in-progress experiment that I'm working on that 
    lets you generate a sum over a column of text that you have
    selected using visual mode.

coverage (built-in)

*   I think this is a simple bundle I put together from 
    [this URL](http://mg.pov.lt/vim/plugin/py-coverage-highlight.vim)

fugitive (submodule)

A superb Git wrapper

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2975)
*   [github](https://github.com/tpope/vim-fugitive)

gundo (submodule)

*   [homepage](http://sjl.bitbucket.org/gundo.vim/)
*   [github](http://github.com/sjl/gundo.vim)

hemisu colorscheme (submodule)

To switch between light and dark background variants:

    :set background=dark
    :set background=light

*   [github](https://github.com/noahfrederick/Hemisu)


linediff.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3745)
*   [github](https://github.com/AndrewRadev/linediff.vim)

lucius color scheme (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2536)
*   [github](https://github.com/vim-scripts/Lucius)


NrrwRgn (submodule)

This is a script emulates Emacs Narrowing feature, by opening a 
selected range in a new scratch buffer.

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3075)
*   [github](https://github.com/vim-scripts/NrrwRgn)


moin.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1459)
*   [github](https://github.com/vim-scripts/moin.vim)

nerdcommenter (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1218)
*   [github](https://github.com/scrooloose/nerdcommenter)

scratch.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=664)
*   [github](https://github.com/vim-scripts/scratch.vim)

snipmate.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2540)
*   [github](https://github.com/msanders/snipmate.vim)

speeddating.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2120)
*   [github](https://github.com/vim-scripts/speeddating.vim)

tabular (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3464)
*   [github](https://github.com/godlygeek/tabular)

Tagbar (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3465)
*   [github](https://github.com/vim-scripts/Tagbar)

taglist (submodule)

*   [vim.ort](http://www.vim.org/scripts/script.php?script_id=273)
*   [github](https://github.com/vim-scripts/taglist.vim)

utl.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=293)
*   [github](https://github.com/vim-scripts/utl.vim)

vimclojure (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2501)
*   [github](https://github.com/vim-scripts/VimClojure)

vim-coffee-script

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3590)
*   [github](https://github.com/kchmck/vim-coffee-script)

vim-colorschemes (submodule)

*   [github](https://github.com/flazz/vim-colorschemes)

vim-colors-solarized (submodule)

*   [homepage](http://ethanschoonover.com/solarized)
*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3520)
*   [github](https://github.com/altercation/vim-colors-solarized)

vimerl (submodule)

Erlang plugin for vim

*   [github](https://github.com/jimenezrick/vimerl)

vim-flake8

This supercedes both vim-pyflakes and vim-pep8

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3927)
*   [github](https://github.com/nvie/vim-flake8)

vim-handlebars (submodule)

This provides syntax highlighting for handlebars template files

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3638)
*   [github](https://github.com/nono/vim-handlebars)

vim-indent-guides (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3361)
*   [github](https://github.com/nathanaelkane/vim-indent-guides)

vim-latex (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=475)
*   [github](https://github.com/vim-scripts/LaTeX-Suite-aka-Vim-LaTeX)

vim-orgmode (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3642)
*   [github](https://github.com/vim-scripts/vim-orgmode)

vimoutliner (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3515)
*   [github](https://github.com/vimoutliner/vimoutliner)

vim-paren-crosshairs

plays crosshairs on the cursor when moving over parens and other elements of
'matchpairs'

*   [github](https://github.com/chreekat/vim-paren-crosshairs.git)

vim-preview (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3344)
*   [github](https://github.com/greyblake/vim-preview)

vim-repeat (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2136)
*   [github](https://github.com/tpope/vim-repeat)

vim-stylus (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3513)
*   [github](https://github.com/wavded/vim-stylus)

vim-surround (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1697)
*   [github](https://github.com/tpope/vim-surround)

vim-unimpaired (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1590)
*   [github](https://github.com/tpope/vim-unimpaired)

vis (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1195)
*   [github](https://github.com/vim-scripts/vis)


