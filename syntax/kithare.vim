" Vim syntax file
" Language: Kithare

if exists('b:current_syntax')
    finish
endif

" Keywords
syntax keyword khConditional    if else elif
syntax keyword khLoop           while do until
syntax keyword khBranch         break continue return
syntax keyword khTypedef        struct class enum alias
syntax keyword khBoolean        true false
syntax keyword khKeyword        def import include
syntax keyword khType           int float complex int8 int16 int32 int64 uint8 uint16 uint32 uint64 float32 float64 complex64 complex128 ref byte word dword qword
syntax match   khOperator       "+\|-\(\(>\)\?\)\|*\|/\|%\|@\|^\|+=\|-=\|*=\|/=\|%=\|@=\|^=\|==\|!=\|<=\|>=\|<<\|>>\|!" " NOTE: '!' is for templating, not unary not
syntax keyword khLogical        and or not as

" Commenting
syntax keyword khTodo           contained TODO FIXME XXX
syntax match   khLineComment    "#.*" contains=khTodo
syntax match   khShebang        "/^%1l#!.*"

" Strings
syntax region  khString         oneline start=+\z("\)+ end=+\z1+ keepend
syntax region  khMultilineStr   start=+\z("\{3\}\)+ end=+\z1+ keepend

" Numbers
syntax match   khNumber         "\<0[xX]\x\+\>\|\<\d\+\(\.\d\+\)\=\([eE][+-]\=\d\+\)\=\>"

" Linking

highlight default link khBranch        Conditional
highlight default link khConditional   Conditional
highlight default link khLoop          Repeat
highlight default link khBoolean       Boolean
highlight default link khTypedef       Keyword
highlight default link khType          Type
highlight default link khKeyword       Keyword
highlight default link khOperator      Operator
highlight default link khlogical       Operator
highlight default link khTodo          Todo
highlight default link khLineComment   Comment
highlight default link khShebang       Comment
highlight default link khString        String
highlight default link khMultiLineStr  String
highlight default link khNumber        Number

let b:current_syntax='kithare'

