setlocal makeprg=zion\ ll\ %<
setlocal textwidth=80
setlocal ts=2 sw=2 expandtab

nmap <F7> :!clear <CR><CR> :make<CR><CR>zz:cw<CR>
noremap <Leader><Leader> vi}=
