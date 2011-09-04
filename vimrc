"   ------------------------------------------------------------------------
"
"   Author: G. Tillman
"
"   ------------------------------------------------------------------------
"
"   Enable pathogen before doing anything else.
"   See http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"   copy indent from current line when starting new line
set autoindent
"   intuitive backspacing in insert mode
set backspace=indent,eol,start
"
"   ------------------------------------------------------------------------
"   BUBBLING TEXT -  bubbling text mappings using the unimpaired  plugin
"   Bubble single lines
nmap <M-Up> [e
nmap <M-Down> ]e
"   Bubble multiple lines
vmap <M-Up> [egv
vmap <M-Down> ]egv
"   ------------------------------------------------------------------------
"
"   let all copy and paste operations use X11 selection buffer
set clipboard+=unnamed
"
"   ------------------------------------------------------------------------
"
"   COFFEESCRIPT
"
"   CoffeeCompile
noremap <leader>cm :CoffeeCompile<CR>
"   CoffeeMake
noremap <leader>cm :CoffeeMake<CR>
"   CoffeeRun
noremap <leader>cr :CoffeeRun<CR>
"   Automatically build the coffee source file when you save
autocmd BufWritePost *.coffee silent CoffeeMake!
"
"   ------------------------------------------------------------------------
"
"   COLOR SCHEME - set default colorscheme
    if !has('gui_running')
        let g:solarized_termcolors=256
        colorscheme solarized
        set background=dark
    endif
"
"   ------------------------------------------------------------------------
"   COMMENTS
"   comment abbreviations
ia #b /******************************************************************************
ia #e ****************************************************************************/
set commentstring=\ #\ %s
"   ------------------------------------------------------------------------
"
"   insert spaces when you hit tab key.  NOTE: to insert a real tab when
"   expandtab is set, just your CTRL-V<Tab>
set expandtab
"   
"   ------------------------------------------------------------------------
"   FOLDING
"   
"   Once you set a foldmethod the following will let the space
"   bar fold and unfold a section of code
"   :set foldmethod=indent
nnoremap <space> za
"   when opening a file have all folds initially closed
set foldlevel=0
"   enable indent folding for python files
autocmd FileType python set foldmethod=indent
"   enable indent folding for javascript files.
"   see http://www.vim.org/scripts/script.php?script_id=1491
"   for improved javascript syntax file
autocmd FileType javascript set foldmethod=syntax
"   ------------------------------------------------------------------------
"   
"   ------------------------------------------------------------------------
"   FUNCTION - Open the URL on the current line in a browser
function! Browser ()
    let line = getline (".")
    let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
    echo line
endfunction
map <Leader>w :call Browser ()<CR>
"   ------------------------------------------------------------------------
"
"   GREP - program to use for the :grep command
set grepprg=grep\ -nH\ $*
"
"   HIDDEN - let you switch from a buffer that contains unsaved changes
"   to another buffer without complaining.
set hidden
"
"   ------------------------------------------------------------------------
"   HIGHLIGHTING - highlight search terms... (2011-07-28) disable
"   set hlsearch
"   ...dynamically as they are typed
set incsearch
"   temporarily turn off hlsearch if it gets annoying
nmap <silent> <leader>n :silent :nohlsearch<CR>
"   ------------------------------------------------------------------------
"
"   use both ignorecase AND smartcase case in searches
set ignorecase
set smartcase
"   
"   ------------------------------------------------------------------------
"   Javascript Settings
"
"   Hilite characters if line length in a Javascript file exceeds 79
    autocmd BufEnter *.js :call HighlightLongLines ()
"   Replace all occurrances of == with ===
noremap <leader>dbe :s/\([^!]\)==/\1===/g<CR>
"   Replace all occurrances of != with !==
noremap <leader>ndbe :s/!=/!==/g<CR>
"   Run jsbeautify on visual selection
vnoremap <leader>jsb !jsbeautify<CR>
"   Run jsbeautify on visual selection and indent one level
vnoremap <leader>jsbi !jsbeautify<CR>:'[,']><CR>
"   Increase indent of last visual selection
noremap <leader>vsi :'[,']><CR>
"
"   ------------------------------------------------------------------------
"
"   LATEX - Vim-LaTeX: http://vim-latex.sourceforge.net/
let g:tex_flavor='latex'
"   wrap long lines at a blank
set linebreak
"
"   ------------------------------------------------------------------------
"
"   LONG LINE HIGHLIGHTING - adds ability to turn on and off highting
"   of lines that are longer that 79 characters in length.  The mapping
"   will toggle on and off
"
function! HighlightLongLines ()
    if exists("g:highlight_long")
        match
        unlet g:highlight_long
    else
        let g:highlight_long = 1
        match ErrorMsg /\%>79v.\+/
    endif
endfunction
map <Leader>h :call HighlightLongLines ()<CR>
"
"   ------------------------------------------------------------------------
"   make tabs and trailing spaces visible when requested (next 2 lines)
set listchars=tab:>-,trail:.,eol:$
nmap <silent> <leader>s :set nolist!<CR>
"   ------------------------------------------------------------------------
"
"   ------------------------------------------------------------------------
"   Markdown Settings
"
"   Tell Vim to treat files ending in .md as Markdown
autocmd BufEnter *.md set filetype=markdown
if has('mac')
    "   This is a little bash wrapper in /usr/local/bin on gordy29
    let g:PreviewBrowsers='browser'
else
    let g:PreviewBrowsers='chromium-browser,firefox'
endif
"
"   ------------------------------------------------------------------------
"   OMNICOMPLETION
"
"   enable omni completion for python files.  
autocmd FileType python set omnifunc=pythoncomplete#Complete
"   Note: to generate the python.tags file you must have exuberant-ctags
"   installed.  Then issue this command:
"
"   ctags -R --exclude='*.js' -f ~/.vim/tags/python.ctags \
"      /System/Library/Frameworks/Python.framework/Versions/2.6/lib \
"      /Library/Python/2.6
"
let taglist = split(&tags, ",")
let tagfiles = split(glob("`find $HOME/.vim/tags -name '*.ctags' -print`"), "\n")
let &tags = join(tagfiles + taglist, ",")
"   ------------------------------------------------------------------------
"
"   ------------------------------------------------------------------------
"   PYTHON settings
"   Hilite characters if line length in a python file exceeds 79
    autocmd BufEnter *.py :call HighlightLongLines ()
"   Hilite all tab characters in a Python file.  Note that since I had
"   already defined one "match" for *.py, I had to use "2match" command
"   to add the second match pattern.
autocmd BufEnter *.py 2match ErrorMsg /[\t]/
"   Automatically remove all trailing whitespace when you save a python file
autocmd BufWritePre *.py :%s/\s\+$//e
"   With the following you can put your cursor over the
"   name of any module you are importing and type gf and it will open the file
"   that contains that module.
"   NOTE: This requires fairly current vim.  On the mac you need MacVim
"   (mvim)
if has("python")
python << EOF
import os, sys, vim
for p in sys.path:
    if p != '' and os.path.isdir(p):
        vim.command(r'set path+=%s' % (p.replace(' ', r'\ ')))

EOF
endif
"   
"   ------------------------------------------------------------------------
"   RULER
"   show line and column number of cursor
set ruler
"   Make a more informative status line
"   name, format, filetype, ascii and hex value of character under cursor,
"       position in document as row and column number and percent, linecount
set statusline=[FMT=%{&ff}]\ [TYP=%Y]\ [ASC=\%03.3b]\ [HEX=\%02\.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\ [%<%f]
set laststatus=2
"   ------------------------------------------------------------------------
"
"   number of spaces for each step of (auto)indent
set shiftwidth=4
"   number of spaces that <Tab> counts for when performing editing operations
set softtabstop=4
"   Turn on spell checking
"   setlocal spell spelllang=en_us
"
"   ------------------------------------------------------------------------
"   SESSIONS -  When using the :mksession command, have it save
"   pretty much everything about what you are doing
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winpos,winsize
"   ------------------------------------------------------------------------
"
"   ------------------------------------------------------------------------
"   SYNTAX HIGHLIGHTING
"   file-type highlighting and configuration.
syntax on
filetype on
filetype plugin on
filetype indent on
"   ------------------------------------------------------------------------
"
"   number of spaces a <Tab> accounts for - spec calls for 8
set tabstop=8
"
"   ------------------------------------------------------------------------
"   TETRIS
"   load tetris game if it is available - \te to start
if filereadable(expand("~/.vim/scripts/tetris.vim"))
    so ~/.vim/scripts/tetris.vim
endif
"   ------------------------------------------------------------------------
"
"   maximum width of text that is inserted.  when 0, wrapmargin may be used.
set textwidth=0
"   TWITVIM TwitVim login information
let twitvim_login = "gordyt:xyzzy1"
"
"   ------------------------------------------------------------------------
"   enable tab command completion
set wildmenu
"   have completion only up to the point of ambiguity, while still
"   showing other options
set wildmode=list:longest
"   ------------------------------------------------------------------------
"
"   UUID generation
imap <Leader>u <C-R>=system('uuidgen <Bar> tr -d "\n-"')<CR>
"
"   ------------------------------------------------------------------------
"   WINDOW RESIZING and Navigation - Easy window resizing mappings
"
map + +   " taller
map _ -   " shorter
map = >   " wider
map - <   " skinnier
"   
set winminheight=0      " Allow windows to get fully squashed
" Switch between windows, maximizing the current window
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 
"   ------------------------------------------------------------------------
"
"   ------------------------------------------------------------------------
"   WRAPPING - uncomment next line to turn on wrapping
"   set wrap
"   turn off wrapping for javascript files
autocmd FileType javascript set nowrap
"   turn off wrapping for python files
autocmd FileType python set nowrap
"   YAML - turn off wrapping for yaml files
autocmd FileType yaml set nowrap
"   ------------------------------------------------------------------------
