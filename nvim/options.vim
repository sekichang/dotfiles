set number             "行番号を表示
set relativenumber     "相対行番号を表示
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
set pumblend=10        "補完メニューを半透明
set winblend=10        "floating windows を半透明
set completeopt=menu,menuone,noselect

if has('nvim')
  set inccommand=split
endif

if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

"------------------------
" gitgutter
"------------------------
set signcolumn=yes " 常に左端のサイン列を表示
set updatetime=100 " 反映されるまでの時間(1s)

"------------------------
" fzf
"------------------------
" fzf settings
"let $FZF_DEFAULT_OPTS="--layout=reverse"
"let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

"let mapleader = "\<Space>"

" fzf
"nnoremap <silent> <leader>f :Files<CR>
"nnoremap <silent> <leader>g :GFiles<CR>
"nnoremap <silent> <leader>G :GFiles?<CR>
"nnoremap <silent> <leader>b :Buffers<CR>
"nnoremap <silent> <leader>h :History<CR>
"nnoremap <silent> <leader>r :Rg<CR>
"
"------------------------
" indentLine
"------------------------
let g:indentLine_fileTypeExclude = ['help', 'markdown', 'lsp-installer']
