setlocal makeprg=./zionc\ compile\ %<
setlocal smartindent

" if you like folding...
" setlocal foldmethod=indent
" setlocal foldignore=

nmap <F7> :!clear <CR><CR> :make<CR><CR>zz:cw<CR>
