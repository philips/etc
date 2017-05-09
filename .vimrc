set nocompatible               " be iMproved
filetype off                   " required!
set clipboard+=unnamedplus
syntax on

set rtp+=~/.vundle/
call vundle#rc()

let mapleader = ","

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Dash
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'https://bitbucket.org/kisom/eink.vim.git'
hi Normal       cterm=NONE          ctermfg=235
color eink

" ledger files
Bundle 'philips/vim-ledger'
au BufNewFile,BufRead journal,*.ldg,*.ledger setf ledger
" I don't want your code folding
au BufNewFile,BufRead journal,*.ldg,*.ledger set foldlevel=20

Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'fatih/vim-go'
autocmd BufNewFile,BufReadPost *.jade setf jade

" Use find on unix. Sooo fast even for Kernel trees.
if has("unix")
  let g:ctrlp_user_command = "find %s -path '*.git*' -prune -o -type f"
endif

nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader><leader> :CtrlP<CR>

filetype plugin indent on      " required!

"http://nvie.com/posts/how-i-boosted-my-vim/
set hidden

set laststatus=2
set statusline=%<%f\ %h%w%m%r%y%=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 

autocmd BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn set filetype=markdown

au FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4
au FileType ruby setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType html setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType hbr setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType hbt setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType xml setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType htmldjango setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType php setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType javascript setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType lua setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType jade setl autoindent tabstop=2 expandtab shiftwidth=2 softtabstop=2

" Vala
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

" Adding signed-off-by/acked-by
ab sobi Signed-off-by: Brandon Philips <brandon@ifup.org>
ab acki Acked-by-by: Brandon Philips <bphilips@suse.de>

" Man pages
runtime ftplugin/man.vim

" I suck at typing
ab teh the

" Cheers, Brandon
ab chbr Cheers,<return><return><tab>Brandon

" highlight search
set hls

" Function to activate a virtualenv in the embedded interpreter for
" omnicomplete and other things like that.
function LoadVirtualEnv(path)
    let activate_this = a:path . '/bin/activate_this.py'
    if getftype(a:path) == "dir" && filereadable(activate_this)
        python << EOF
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
EOF
    endif
endfunction

set autoindent

set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" for vim version greater than 7.3
if v:version >= 703
    try
        set undofile
        set undofile=/tmp
    catch
    endtry
endif

" If possible, try to use a narrow number column.
if v:version >= 700
    set undodir=~/.vimundo
    try
        setlocal numberwidth=3
    catch
    endtry
endif

" Extra terminal things
set termencoding=utf-8
if (&term == "xterm-256color" || &term == "screen-256color" || &term =~ '-256color' || &term =~ 'screen-' || &term =~ 'rxvt' || &term =~ 'xterm')
    set t_Co=256
endif

" GUI Related Options
if has("gui_macvim")
    set antialias
    set enc=utf-8
    set fuoptions=maxvert,maxhorz
endif

" Don't be like vi :)
set nocompatible
set showfulltag
set nolazyredraw
set sessionoptions=folds,sesdir,tabpages,winsize
set autoread
set tabpagemax=50
set isk+=_,$,@,%,#,-                  " none word dividers
set wildchar=<Tab> wildmenu wildmode=full
set wildignore+=*.o,*~,*.lo
set suffixes+=.in,.a
set previewheight=5
set cmdheight=1
set cinoptions=:0,l1,(0,t0
set noea
set viminfo='1000,f1,:1000,/1000
set completeopt=longest,menuone
set complete=.,w,b,u,t
set spelllang=en_us
set spellsuggest=fast,20
set timeoutlen=500
set nostartofline          " don't jump to the start of line when scrolling
set guitablabel=%n/\ %t\ %M
set modelines=1
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" Highlight trailing spaces
set list listchars=trail:.,tab:>.
highlight SpecialKey ctermfg=Black ctermbg=Gray

" Nice window title
set notitle
exe "set title t_ts=\<ESC>k t_fs=\<ESC>\\"
if has('title') && !has('gui_running') && &title
    set titlestring=
    set titlestring+=vim
elseif has('title') && has('gui_running') && &title
    set titlestring=
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif

" GUI Options {{{1
" No icky toolbar, menu or scrollbars in the GUI
if has('gui_running')
    set guioptions=oce
end

if has("gui_running") && v:version >= 700
    set cursorline
end

" Strip leading whitespace
nnoremap <leader>s :%s/\s\+$//<cr>:let @/=''<CR>

" Line numbers
autocmd BufEnter * :call <SID>WindowWidth()
fun! <SID>WindowWidth()
    if winwidth(0) > 90
      if v:version >= 703
        setlocal relativenumber
      else
        setlocal number
      endif
    else
      if v:version >= 703
        setlocal norelativenumber
      else
        setlocal nonumber
      endif
    endif
endfun
