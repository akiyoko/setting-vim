set nocompatible
filetype off

"----------------------------------------
" Setup Neobundle
"----------------------------------------
if has('vim_starting')
  set runtimepath+=~/.bundle/neobundle.vim/
  call neobundle#rc(expand('~/.bundle/'))
endif

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'https://github.com/Shougo/vimproc.git'
"NeoBundle 'https://github.com/Shougo/unite.vim.git'
"NeoBundle 'https://github.com/mattn/zencoding-vim.git'
"NeoBundle 'https://github.com/thinca/vim-quickrun.git'
"NeoBundle 'https://github.com/thinca/vim-ref.git'
NeoBundle 'vim-scripts/The-NERD-tree'
"NeoBundle 'https://github.com/hallettj/jslint.vim.git'
NeoBundle 'nanotech/jellybeans.vim'

" 引数なしでvimを開くとNERDTreeを起動
let file_name = expand('%')
if has('vim_starting') &&  file_name == ''
  autocmd VimEnter * NERDTree ./
endif

" カラースキーム
colorscheme jellybeans

"----------------------------------------
" Indent
"----------------------------------------
" 画面に表示されるタブ幅
set tabstop=4
" タブをスペース展開
set expandtab
" インデント時のスペース数
set shiftwidth=4
" タブが押された場合にtabstopでなく、shiftwidthの数だけインデントする
set smarttab
" 自動インデント
set autoindent

"----------------------------------------
" Search
"----------------------------------------
" シンタックスハイライト
syntax on

" 行番号の表示
set number
" 空白文字の表示
"set list
" カーソル行をハイライト
set cursorline

" インクリメンタルサーチ
set incsearch
" 大文字小文字を区別しない
set ignorecase
" 大文字と小文字の両方が入力された場合のみ区別する
set smartcase
" 検索文字をハイライトする
set hlsearch
" 最終行まで検索したら先頭行に戻る
set wrapscan

"----------------------------------------
" Other
"----------------------------------------
" タブと行末半角スペースを強調する
:highlight TabSpace ctermbg=DarkBlue
:match TabSpace /\t\|\s\+$/

" ペースト時にオートインデント停止
:set paste

" バックアップファイルを作成しない
set nobackup

filetype plugin on
filetype indent on

