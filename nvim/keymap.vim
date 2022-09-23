"-------------------------
"  keymap
"-------------------------
"insert modeでの移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 次（前）の検索候補を画面中央に表示する
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" ESC + ESC でハイライトを消す
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

" + と - で数字のインクリメント、デクリメントを行う
nnoremap + <C-a>
nnoremap - <C-x>

" レジスタに保存しないで削除
nnoremap x "_x
nnoremap s "_s

" 行を移動
nnoremap <silent><A-j> :move .+1<CR>==
nnoremap <silent><A-k> :move .-2<CR>==
vnoremap <silent><A-j> :move '>+1<CR>gv=gv
vnoremap <silent><A-k> :move '<-2<CR>gv=gv

vnoremap p "_dP
