" Python
au FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Vala
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

" Adding signed-off-by
map #3 /Signed-off-by:NoSigned-off-by: Brandon Philips <bphilips@suse.de><ESC>

" Detecting annoying extra whitespace
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
highlight ExtraWhitespace ctermbg=red guibg=red
