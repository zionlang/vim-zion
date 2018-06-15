setlocal makeprg=zion\ compile\ %<
setlocal textwidth=0

" if you like folding...
" setlocal foldmethod=indent
" setlocal foldignore=

nmap <F7> :!clear <CR><CR> :make<CR><CR>zz:cw<CR>
