" Based on dart's indenting system

if exists('b:kh_indent')
    finish
endif
let b:kh_indent = 1

setlocal cindent
setlocal cinoptions=j1,J1,U1,m1,+2s

"setlocal indentexpr=KithareIndent

"let b:undo_indent = 'setl cin< cino<'

"if exists('*KithareIndent')
"    finish
"endif

"function! KithareIndent()
"    let indentTo = cindent(v:lnum)
"
"    let prevLine = getline(prevnoblank(v:lnum - 1))
"    let currentLine = getline(v:lnum)


