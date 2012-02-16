if has("python")
function! ColAddRight() range
python << EOF
import os, sys, vim
def line_replace_right(line, val, first_col, last_col):
    new_line = line[0:first_col] + str(val).rjust(last_col-first_col) + line[last_col:]
    return new_line

# the first line of a range
first = vim.eval("a:firstline")
# the last line of a range
last = vim.eval("a:lastline")
(first_row, first_col) = vim.current.buffer.mark('<')
(last_row, last_col) = vim.current.buffer.mark('>')
first_row -= 1
last_row -= 1
col_width = last_col - first_col
b = vim.current.buffer
sum = 0
for row in range(first_row, last_row):
    try:
        val = int(b[row][first_col:last_col+1].strip())
        b[row] = line_replace_right(b[row], val, first_col, last_col)
        sum += val
    except:
        pass
b[last_row] = line_replace_right(b[last_row], sum, first_col, last_col)
EOF
endfunction
map <Leader>car :call ColAddRight ()<CR>
endif

" This is a simple test.  To peform, just to a visual selection of the inner
" parts of the lines that contain the values 1, 2, and 3, and also the blank
" area below the 3.  The do leader-pt
"
" | Val | Tag   |
" | --- | ---   |
" | 1   | one   |
" | 2   | two   |
" | 3   | three |
" |     | sum   |


