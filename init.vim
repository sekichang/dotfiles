"------------------------
"  vim-plug
"------------------------
call plug#begin()

" ステータスバーのカスタマイズ
Plug 'itchyny/lightline.vim'

" インデントの可視化
Plug 'Yggdroot/indentLine'

" Git差分表示
Plug 'airblade/vim-gitgutter'

" Git
Plug 'tpope/vim-fugitive'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" color scheme
Plug 'cocopon/iceberg.vim'

call plug#end()

"------------------------
"  初期設定
"------------------------
set number             "行番号を表示
if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
set cursorline         "カーソル行をハイライト
set scrolloff=5        "スクロールする時に下が見えるようにする
set virtualedit=all    "文字がない場所にもカーソルを移動できるようにする
set autoindent         "改行時に自動でインデントする
set smartindent        "改行入力行の末尾にあわせてインデントを増減する
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set softtabstop=2      "TABキーやBSキーを打ち込んだときに動く幅の設定
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set ignorecase         "検索時に大文字小文字無視
set smartcase          "大文字も含めた検索の場合はその通りに検索する
set pumheight=10       "補完メニューの高さ

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END


colorscheme iceberg
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

"------------------------
"  lightline
"------------------------
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
\ }
" # show statusbar
set laststatus=2
" # hide --INSERT--
set noshowmode

"------------------------
" fzf
"------------------------
" fzf settings
let $FZF_DEFAULT_OPTS="--layout=reverse"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

let mapleader = "\<Space>"

" fzf
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>G :GFiles?<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>r :Rg<CR>


"------------------------
" 保存時に行末の空白削除
"------------------------
autocmd BufWritePre * :%s/\s\+$//ge

