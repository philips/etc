set nocompatible
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin()

" fix q in nvim https://github.com/neovim/neovim/issues/6403
set guicursor=

let mapleader = ","

" Dash
Plug 'philips/meink.vim'
hi Normal       cterm=NONE          ctermfg=235

Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()            " required

set background=light
color meink

nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader><leader> :CtrlP<CR>
autocmd FileType go nmap <leader>v  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

filetype plugin indent on      " required!

" highlight search
set hls

set autoindent
set autowrite

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
