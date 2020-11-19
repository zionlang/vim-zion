" setlocal makeprg=zion\ ll\ %<
setlocal textwidth=0
setlocal wrapmargin=0
setlocal ts=2 sw=2 expandtab

nmap <F7> :!clear <CR><CR> :make<CR><CR>zz:cw<CR>
noremap <Leader><Leader> va}=
