set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

set nocompatible
set autoread

filetype plugin on
syntax enable
set number
set tags=./tags,tags;

set path+=**
set wildmenu

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'Valloric/YouCompleteMe'

call plug#end()

autocmd FileType javascript setlocal omnifunc=tern#Complete
set completeopt-=preview
" set omnifunc=syntaxcomplete#Complete
autocmd BufWritePost *.js AsyncRun -post=checktime /usr/bin/eslint --fix %
command! MakeTags !ctags -R .

