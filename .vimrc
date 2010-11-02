" Python
au FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Vala
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

" Adding signed-off-by/acked-by
map #3 /Signed-off-by:NoSigned-off-by: Brandon Philips <bphilips@suse.de><ESC>
ab sobi Signed-off-by: Brandon Philips <brandon@ifup.org>
ab sobs Signed-off-by: Brandon Philips <bphilips@suse.de>
ab acks Acked-by: Brandon Philips <bphilips@suse.de>
ab acki Acked-by-by: Brandon Philips <bphilips@suse.de>

" Detecting annoying extra whitespace
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
highlight ExtraWhitespace ctermbg=red guibg=red

" Man pages
runtime ftplugin/man.vim

" I suck at typing
ab teh the

" Cheers, Brandon
ab chbr Cheers,<return><return><tab>Brandon

" highlight search
set hls

