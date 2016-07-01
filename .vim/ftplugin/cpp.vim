" ========== インデントの設定(GRASSのコーディング規約に準拠) ==========
" タブの画面上での幅
setlocal tabstop=8
"インデント幅
setlocal shiftwidth=4
" タブをスペースに展開しない (expandtab:展開する)
setlocal noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
"set autoindent
"C言語プログラミング向けに特化したインデント
"setlocal cindent

" ========== 表示設定 ==========
" 行番号を表示 (number:表示)
setlocal number
" タブや改行を表示 (list:表示)
"set list
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
"setlocal wrap

"doxygenのシンタックスハイライトを有効にする(Vim7以降)
let g:load_doxygen_syntax=1
