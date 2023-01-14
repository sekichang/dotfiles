"-------------------------
"  keymap
"-------------------------
" nvim-surround
nmap S ysiw

"入力モードでのカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 画面移動
"nnoremap <silent><C-h> <C-w>h
"nnoremap <silent><C-j> <C-w>j
"nnoremap <silent><C-k> <C-w>k
"nnoremap <silent><C-l> <C-w>l

" 画面サイズ変更
nnoremap <silent><A-Up> :resize -2<CR>
nnoremap <silent><A-Down> :resize +2<CR>
nnoremap <silent><A-Left> :vertical resize -2<CR>
nnoremap <silent><A-Right> :vertical resize +2<CR>

" 次（前）の検索候補を画面中央に表示する
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" 1画面分進む(戻る)際、画面中央に表示する
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

" 画面中央に表示する
nnoremap G Gzz

" ESCを2回押すことでハイライトを消す
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

" + と - で数字のインクリメント、デクリメントを行う
nnoremap + <C-a>
nnoremap - <C-x>

" レジスタに保存しないで削除
nnoremap x "_x
"nnoremap s "_s
vnoremap p "_dP

" 行を移動
nnoremap <silent><A-j> :move .+1<CR>==
nnoremap <silent><A-k> :move .-2<CR>==
vnoremap <silent><A-j> :move '>+1<CR>gv=gv
vnoremap <silent><A-k> :move '<-2<CR>gv=gv

" 全選択
nnoremap <C-a> ggVG

" 折り返しがあっても上下の移動を1行にする
noremap j gj
noremap k gk

" 行頭、行末に移動する
noremap H 0
noremap L $

" インデントの調整後にビジュアルモードを解除しない
vnoremap < <gv
vnoremap > >gv

" 貼り付け先のインデントに合わせてペースト
nnoremap p ]p
nnoremap P ]P

" 行頭/行末へ移動
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 一文字戻る/一文字進む
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

" delete/backspace
cnoremap <C-d> <Del>
cnoremap <C-h> <Bs>

" 前履歴/次履歴
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
