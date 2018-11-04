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
    git submodule update --init --recursive


NOTES: 

1. The javaScriptLint.vim submodule depends upon the jsl command.  References:

    * The [JavaScript Lint Homepage](http://www.javascriptlint.com)
    * Install via homebrew: `brew install jsl`
    * Install from source (you want version 0.3.0), Ubuntu:


            wget http://javascriptlint.com/download/jsl-0.3.0-src.tar.gz
            tar xfz jsl-0.3.0-src.tar.gz
            rm !$
            cd jsl-0.3.0/src
            make -f Makefile.ref
            cd Linux_All_DBG.OBJ
            ln -s `pwd`/jsl /usr/local/bin/jsl


1. The vim-flake8 submodule depends upon the flake8 command.  To install it:

    sudo easy_intall flake8

1.  The vim-preview submodule depends on various other components to support the desired preview
    formats:

    *   *markdown* format requires the `bluecloth` ruby gem
    *   *rdoc* format requires the `github-markup` ruby gem
    *   *textile* format requires the `RedCloth` ruby gem
    *   *ronn* format requires the `ronn` ruby gem
    *   *reStructuredText* format requires the `RbST` ruby gem and the `rst2html` utility (part of python-docutils)


