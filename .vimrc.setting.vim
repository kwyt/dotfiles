" シンタックスハイライトを有効
syntax on

" highlight Normal ctermbg=none

" タブ文字挿入
set expandtab

" 自動インデント
set autoindent

" バックスペースに反応がない場合の対処
set backspace=indent,eol,start

" クリップボードにコピー
set clipboard=unnamed,autoselect

" 行番号の表示
set number

" スワップファイルを作らない
set noswapfile

" バックアップを作らない
set nobackup

" 編集中のファイル名表示
set title

" コマンドの補完表示
set wildmenu

" タブ表示の幅
set tabstop=2

set shiftwidth=2

set softtabstop=2

" 対応する括弧のハイライト表示
set showmatch

" ctags
set tags+=~/.tags

" 画面の更新をバッファリング
set lazyredraw

" ターミナル接続を高速化
set ttyfast

" 検索結果のハイライト
set hlsearch

" 履歴の上限数
set history=500

set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Golang linter
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" コメント行から改行した行をコメントにしないようにする
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" vim-tags
au BufNewFile,BufRead *.rb let g:vim_tags_project_tags_command = "ctags --languages=ruby -f ~/ruby.tags `pwd` 2>/dev/null &"
