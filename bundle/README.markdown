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
*   [github](https://github.com/markabe/bufexplorer.git)

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
*   [github](https://github.com/tpope/vim-fugitive.git)

gundo (submodule)

*   [homepage](http://sjl.bitbucket.org/gundo.vim/)
*   [github](http://github.com/sjl/gundo.vim.git)

hemisu colorscheme (submodule)

To switch between light and dark background variants:

    :set background=dark
    :set background=light

*   [github](https://github.com/noahfrederick/Hemisu.git)

javascript.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1491)
*   [github](https://github.com/serverhorror/javascript.vim.git)

javaScriptLint.vim (submodule)

javascriptLint.vim allows the JavaScript Lint (jsl) program from
http://www.javascriptlint.com to be tightly integrated with Vim.  The contents
of a javascript file will be passed through the jsl program after the file's
buffer is saved.  Any lint warnings will be placed in the quickfix error
window.

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2578)
*   [github](https://github.com/joestelmach/javaScriptLint.vim.git)


NrrwRgn (submodule)

This is a script emulates Emacs Narrowing feature, by opening a 
selected range in a new scratch buffer.

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3075)
*   [github](https://github.com/vim-scripts/NrrwRgn.git)

pep8 (submodule)
*   http://www.vim.org/scripts/script.php?script_id=3160
*   https://github.com/vim-scripts/pep8--Driessen.git

pyflakes-vim (submodule)

Switched to using my fork of pyflakes-vim for now because it requires
another submodule (pyflakes) and the author is using a URL for the
submodule that requires you to be authenticated with GitHub to access.
I switched to using the Read-Only URL for the pyflakes submodule.

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2441)
*   [github - kevinw](git://github.com/kevinw/pyflakes-vim.git)
*   [github - gordyt](git://github.com/gordyt/pyflakes-vim.git)

moin.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1459)
*   [github](https://github.com/vim-scripts/moin.vim.git)

nerdcommenter (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1218)
*   [github](https://github.com/scrooloose/nerdcommenter.git)

nerdtree (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1658)
*   [github](https://github.com/scrooloose/nerdtree.git)

scratch.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=664)
*   [github](https://github.com/vim-scripts/scratch.vim.git)

snipmate.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2540)
*   [github](https://github.com/msanders/snipmate.vim.git)

speeddating.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2120)
*   [github](https://github.com/vim-scripts/speeddating.vim.git)

tabular (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3464)
*   [github](https://github.com/godlygeek/tabular.git)

Tagbar (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3465)
*   [github](https://github.com/vim-scripts/Tagbar.git)

taglist (submodule)

*   [vim.ort](http://www.vim.org/scripts/script.php?script_id=273)
*   [github](https://github.com/vim-scripts/taglist.vim.git)

utl.vim (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=293)
*   [github](https://github.com/vim-scripts/utl.vim.git)

vim-coffee-script

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3590)
*   [github](https://github.com/kchmck/vim-coffee-script.git)

vim-colorschemes (submodule)

*   [github](https://github.com/flazz/vim-colorschemes.git)

vim-colors-solarized (submodule)

*   [homepage](http://ethanschoonover.com/solarized)
*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3520)
*   [github](https://github.com/altercation/vim-colors-solarized.git)

vimerl (submodule)

Erlang plugin for vim

*   [github](https://github.com/jimenezrick/vimerl.git)

vim-indent-guides (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3361)
*   [github](https://github.com/nathanaelkane/vim-indent-guides.git)

vim-latex (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=475)
*   [github](https://github.com/vim-scripts/LaTeX-Suite-aka-Vim-LaTeX.git)

vim-orgmode (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3642)
*   [github](https://github.com/vim-scripts/vim-orgmode.git)

vimoutliner (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3515)
*   [github](https://github.com/vimoutliner/vimoutliner.git)

vim-preview (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3344)
*   [github](https://github.com/greyblake/vim-preview.git)

vim-repeat (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=2136)
*   [github](https://github.com/tpope/vim-repeat.git)

vim-stylus (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=3513)
*   [github](https://github.com/wavded/vim-stylus.git)

vim-surround (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1697)
*   [github](https://github.com/tpope/vim-surround.git)

vim-unimpaired (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1590)
*   [github](https://github.com/tpope/vim-unimpaired.git)

vis (submodule)

*   [vim.org](http://www.vim.org/scripts/script.php?script_id=1195)
*   [github](https://github.com/vim-scripts/vis.git)


