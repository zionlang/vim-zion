" Author: wbbradley@
" Description: zion linting for Zion files

call ale#Set('zion_zion_executable', 'zion')
call ale#Set('zion_zion_options', 'll')

function! ale_linters#zion#zion#GetCommand(buffer) abort
    let l:options = ale#Var(a:buffer, 'zion_zion_options')

    return '%e' . (!empty(l:options) ? ' ' . l:options : '') . ' %t'
endfunction

function! HandleZionLint(buffer, lines) abort
  let l:pattern = '\v^([^:]+):(\d+):(\d+): (.+)$'
  let l:output = []
  let l:dir = expand('#' . a:buffer . ':p:h')
  for l:match in ale#util#GetMatches(a:lines, l:pattern)
    call add(l:output, {
    \   'lnum': l:match[2] + 0,
    \   'col': l:match[3] + 0,
    \   'text': l:match[4],
    \   'type': 'E',
    \})
  endfor

  return l:output
endfunction

call ale#linter#Define('zion', {
  \   'name': 'zion',
  \   'output_stream': 'both',
  \   'executable': {b -> ale#Var(b, 'zion_zion_executable')},
  \   'command': function('ale_linters#zion#zion#GetCommand'),
  \   'callback': 'HandleZionLint',
  \  })

