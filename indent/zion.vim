" Copyright 2018 Zion. All rights reserved.
"
" indent/zion.vim: Vim indent file for Zion.
"

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal expandtab
setlocal nolisp
setlocal autoindent
setlocal indentexpr=ZionIndent(v:lnum)
setlocal indentkeys+=0},0),0]

if exists("*ZionIndent")
  finish
endif

" use shiftwidth function only if it's available
if exists('*shiftwidth')
  func s:sw()
    return shiftwidth()
  endfunc
else
  func s:sw()
    return &sw
  endfunc
endif

function! ZionIndent(lnum)
  let prevlnum = prevnonblank(a:lnum-1)
  if prevlnum == 0
    " top of file
    return 0
  endif

  " grab the previous and current line, stripping comments.
  let prevl = substitute(getline(prevlnum), '#.*$', '', '')
  let thisl = substitute(getline(a:lnum), '#.*$', '', '')
  let previ = indent(prevlnum)

  let ind = previ

  if prevl =~ '[({]\s*$'
    " previous line opened a block
    let ind += s:sw()
  endif

  if thisl =~ '^\s*[)}]'
    " this line closed a block
    let ind -= s:sw()
  endif

  return ind
endfunction

" vim: sw=2 ts=2 et

