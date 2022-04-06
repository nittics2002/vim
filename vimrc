""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"デフォルトインポート
source $VIMRUNTIME/defaults.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fenc=utf-8
set backspace=indent,eol,start
set number
set whichwrap=b,s,h,l,<,>,[,],~

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:_

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ファイル

"外部で変更された情報を自動反映
set autoread

"バックアップファイルパス
set backupdir=~/.cache/vim,/tmp

"スワップファイルパス
set directory=~/.cache/vim,/tmp

"undoファイルパス
set undodir=~/.cache/vim,/tmp

"未保存でもファイル開く
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab

"C言語風言語自動インデント
set smartindent

"\tを空白に展開
set expandtab

"\tの画面表示数
set tabstop=4

"キーボードでTABを押したた時の挿入数
set softtabstop=4

"自動挿入される数
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ハイライト

"対応するカッコなどを表示
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ヘルパー
set mouse=a
set helplang=ja,en

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"クリップボード
"C-c/C-p
set clipboard=unnamedplus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ファイルタイプ別

"python
augroup MyPtyhon
    autocmd! BufNewFile,BufRead *.py
    autocmd BufNewFile,BufRead *.py setlocal tabstop=1 shiftwidth=1 softtabstop=1
augroup END
