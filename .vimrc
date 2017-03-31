"Plugin
"プラグインを読込む場合はここに記述
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
" Ctrl+eでツリー表示する
nnoremap <silent><C-e> :NERDTree<CR>
" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

"Backup
set noundofile		"undoファイルを生成しない
set nobackup			"backupファイルを生成しない
set noswapfile		"swapファイルを生成しない

"Visual
set number      	"行番号を表示
set cursorline  	"現在行を強調表示
set cursorcolumn  "現在列を強調表示
set paste         "ペースト時のオートインデントを無効にする
syntax on					"構文毎に色分けをする

""""""""""""""""""""""""""""""
" 全角スペースの表示
" http://inari.hatenablog.com/entry/2014/05/05/231307
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""

"Search
set incsearch   "インクリメンタルサーチを行う
set hlsearch    "検索結果をハイライトする
set ignorecase  "検索時に大文字小文字を区別しない
set smartcase   "検索ワードに大文字を含んでいたら大小を区別する
set wrapscan    "ファイルの先頭へループする
set whichwrap=b,s,h,l,<,>,[,] "カーソルを行頭、行末で止まらないようにする
set clipboard=unnamed "クリップボードを利用する

"Input
set expandtab			"タブ入力を複数の空白入力に置き換える
set tabstop=2			"画面上でタブ文字が占める幅
set shiftwidth=2	"自動インデントでずれる幅
set autoindent		"改行時に前の行のインデントを継続する
