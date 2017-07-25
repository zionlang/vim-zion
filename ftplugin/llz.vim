setlocal makeprg=./llz\ compile\ %<
setlocal smartindent
setlocal autoindent
setlocal noexpandtab

nmap <F7> :!clear <CR><CR> :make<CR><CR>zz:cw<CR>
