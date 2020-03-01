if exists('b:current_syntax')
  finish
endif

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax='v'

" Keyword
syn keyword VCond if else match or
syn keyword VLoop for in
syn keyword VStat break continue
syn keyword VResv 
  \ fn return
  \ defer
  \ go goto
  \ module import 
  \ interface type
  \ const mut pub
syn keyword VBuil 
  \ assert
  \ print println 
syn keyword VLib os cli time ui rand math json gx gg gl base64

syn keyword VStru struct enum 
syn keyword VType
  \ bool
  \ i8 i16 int i64 i128
  \ byte u16 u32 i64 u128
  \ f32 f64
  \ char
  \ string
  \ byteptr voidptr
  \ none

" Operator
syn match VOper "[-+!|&<>=%*/^:;.,]" skipwhite
" Function
syn match VFunc '\w\+\s*('me=e-1,he=e-1
" Class
syn match VClas '\u\w\+'
" Comment
syn region VComm start='/\*' end='\*/'
syn match  VCommLine '//.*'

" Data Structure
" - Boolean
syn keyword VBool true false
" - Number
syn match VInt '\d\+'
syn match VFlo '\d\+\.\d\+'
" - Character
syn region VChar start='`' end='`'
" - String
syn region VStr start="'" end="'" contains=VStrVar,VStrIntr
syn region VStrRaw start="r'" end="'" contains=VStrVar,VStrIntr
syn region VStrIntr start='${' end='}'
syn match  VStrVar '\$\w\+'

" Link
hi def link VCond Conditional
hi def link VLoop Repeat
hi def link VStat Conditional
hi def link VResv Keyword
hi def link VBuil Constant
hi def link VLib  Constant

hi def link VStru Structure
hi def link VType Type

hi def link VOper Operator
hi def link VFunc Function
hi def link VClas Function
hi def link VComm Comment
hi def link VCommLine Comment

hi def link VBool Boolean
hi def link VInt  Number
hi def link VFlo  Number
hi def link Vchar Character
hi def link VStr  String
hi def link VStrRaw String
