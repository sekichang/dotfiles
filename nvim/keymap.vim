"-------------------------
"  keymap
"-------------------------
"入力モードでのカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 画面移動
nnoremap <silent><C-h> <C-w>h
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-l> <C-w>l

" 次（前）の検索候補を画面中央に表示する
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" ESCを2回押すことでハイライトを消す
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

" + と - で数字のインクリメント、デクリメントを行う
nnoremap + <C-a>
nnoremap - <C-x>

" レジスタに保存しないで削除
nnoremap x "_x
nnoremap s "_s
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
noremap <S-h> 0
noremap <S-l> $

" インデントの調整後にビジュアルモードを解除しない
vnoremap < <gv
vnoremap > >gv

" 貼り付け先のインデントに合わせてペースト
nnoremap p ]p
nnoremap P ]P
