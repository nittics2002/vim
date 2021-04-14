"デフォルトインポート
source $VIMRUNTIME/defaults.vim


"
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set backspace=indent,eol,start
set number
set whichwrap=b,s,h,l,<,>,[,],~

"
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:_

"tab
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

"
set showmatch

"ヘルプ
set mouse=a
set helplang=ja,en


"クリップボードC-c/C-p
set clipboard=unnamedplus

"ファイルタイプ別 
autocmd FileType python setlocal tabstop=2


