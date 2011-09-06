Installation:

    READONLY access:
        git clone git://github.com/gordyt/vim.git ~/.vim

    READ/WRITE access:
        git clone git@github.com:gordyt/vim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init


Then switch to the '~/.vim/bundle/pyflake-vim' directory and fetch
the pyflake submodule:

    cd ~/.vim/bundle/pyflake-vim
    git submodule update --init

NOTES: 

1. The javaScriptLint.vim submodule depends upon the jsl command.  References:

    * The [JavaScript Lint Homepage](http://www.javascriptlint.com)
    * Install via homebrew: `brew install jsl`
    * Install from source:

        svn co https://javascriptlint.svn.sourceforge.net/svnroot/javascriptlint/trunk jsl
        cd jsl
        python setup.py build
        python setup.py install

1. The pep8 submodule depends upon pep8.  To install:

    sudo easy_intall pep8

1.  The vim-preview submodule depends on various other components to support the desired preview
    formats:

    *   *markdown* format requires the `bluecloth` ruby gem
    *   *rdoc* format requires the `github-markup` ruby gem
    *   *textile* format requires the `RedCloth` ruby gem
    *   *ronn* format requires the `ronn` ruby gem
    *   *reStructuredText* format requires the `RbST` ruby gem and the `rst2html` utility (part of python-docutils)


