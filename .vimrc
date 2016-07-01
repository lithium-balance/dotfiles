" ========== 全般設定 ==========
" from /etc/vimrc
set nocompatible	" Use Vim defaults (much better!)


" ========== インデントの設定 ==========
" タブの画面上での幅
set tabstop=4
"インデント幅
set shiftwidth=4

" ========== 表示設定 ==========
" タイトルを表示
"set title
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
"set list
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
"対応する括弧の表示
set showmatch
" 対応する括弧の表示を強化
source $VIMRUNTIME/macros/matchit.vim
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
"ステータス行に「ファイルエンコード」と「改行コード(fileformat)」を表示
set statusline=%<%f\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4l/%L\ %6(%c%V%)\ %6P

" ========== 検索関連 ==========
"検索のときに入力した文字からリアルタイムで（？）検索する
set incsearch
"検索文字にハイライトをつける
set hlsearch
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set noignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
"set smartcase
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan

" ========== 入力補助 ==========
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
"コメント書式（以下はデフォルト値と同様の動きをする）
"set comments=s1:/**,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-,sr:/*,mb:*,ex:*/
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
"コメント開始文字列の挿入を挿入モードのEnterやoコマンドでも有効とする
"set formatoptions+=ro
set formatoptions-=ro
autocmd FileType * setlocal formatoptions-=ro

" ========== マウス設定 ==========
set mouse=nv
"set mouse=a
set selectmode=mouse

" ========== プラグイン関連 ==========
" syntax/yacc.vimを読み込む際、cpp.vimを読み込むようにする(デフォルトはc.vim)
let yacc_uses_cpp=1
" シェルスクリプトはbashをデフォルトとする
let g:is_bash=1

filetype plugin on



" ========== from /etc/vimrc ==========
if exists("use_u_option")
  "set t_AB=[48;5;%dm
  "set t_AF=[38;5;%dm
  "set t_Co=256

  "set viminfo='20,<50,s10,h

  " Only do this part when compiled with support for autocommands
  if has("autocmd")
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  endif
endif


" ========== シンタックスハイライト ==========
if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif
if &term=="xterm-color"
     set t_Co=256
endif
if &term=="teraterm"
     set t_Co=16
endif

"文字に色を付ける
syntax on

" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)
"colorscheme peachpuff
"colorscheme delek
"colorscheme peachpuff256
"colorscheme default
"colorscheme leo
colorscheme wombat256mod
"colorscheme lucius
" カーソル行を表示する(Vim7以降)
if exists("&cursorline")
  set cursorline
endif


" ========== 文字コードの自動認識 ==========
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

