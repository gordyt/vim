"   Include the contents of the ~/.vimrc file
source ~/.vimrc
"
"   Now add gvim-specific settings
"
"   set lines=40
"   set columns=80
"   Linux font specification: Consolas\ 12
"   Mac font specification: Consolas:h13.00
set guifont=Consolas\ 12,Consolas:h13.00,DejaVu\ Sans\ Mono\ 11,DejaVu\ Sans\ Mono:h13.00
"   Override colorscheme for GUI editor.  Here are some that I like
"   DARK SCHEMES:
"   calmar256-dark (really green)
"   desert (very nice and included with standard colors)
"   earendel
"   navajo-night
"   peaksea
"   spiderhawk
"   LIGHT SCHEMES:
"   dual (good in gvim/mvim)
"   google (good in terminal)
"   colorscheme desert
"   DUAL SCHEMES:
"   solarized (swith via set background=light|dark)
set background=dark
colorscheme solarized
