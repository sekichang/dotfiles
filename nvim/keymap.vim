"-------------------------
"  keymap
"-------------------------
"insert modeでの移動
:imap <c-h> <Left>
:imap <c-j> <Down>
:imap <c-k> <Up>
:imap <c-l> <Right>

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

