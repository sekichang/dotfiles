# =============================================================================
# General
# =============================================================================

# config.fish
if status is-interactive
    fish_config theme choose catppuccin-mocha --color-theme=dark
end

# 起動時のあいさつメッセージを非表示
set -g fish_greeting ""

# =============================================================================
# Environment Variables
# =============================================================================

# デフォルトエディタ
set -gx EDITOR nvim
set -gx VISUAL nvim

# デフォルトページャー
set -gx PAGER less

# =============================================================================
# XDG Base Directory
# =============================================================================

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

# =============================================================================
# Language / Locale
# =============================================================================

set -gx LANG ja_JP.UTF-8
set -gx LC_ALL ja_JP.UTF-8

# =============================================================================
# Color Support
# =============================================================================

# Ghostty は TERM=xterm-ghostty を設定するためスキップ
# それ以外のターミナルでは 256color を明示的に指定
if test "$TERM" != xterm-ghostty
    set -gx TERM xterm-256color
end

# TrueColor (24bit) を有効化
set -gx COLORTERM truecolor

# =============================================================================
# PATH
# =============================================================================

fish_add_path /opt/homebrew/bin # Homebrew (Apple Silicon)
fish_add_path /opt/homebrew/sbin # Homebrew sbin
fish_add_path $HOME/.local/bin # ユーザーローカルバイナリ
fish_add_path $HOME/.cargo/bin # Rust (Cargo) バイナリ
fish_add_path $HOME/.bun/bin # Bun バイナリ

set -gx BUN_INSTALL $HOME/.bun # Bun インストールパス

# =============================================================================
# Tools Initialization
# =============================================================================

# Starship: クロスシェルプロンプト
if command -q starship
    starship init fish | source
end

# zoxide: 履歴ベースのスマートな cd
if command -q zoxide
    zoxide init fish | source
end

# mise: ランタイムバージョン管理 (Node, Python, bun など)
if command -q mise
    mise activate fish | source
end

# =============================================================================
# Aliases
# =============================================================================

# --- Editor ---
if type -q nvim
    alias vi nvim
end

# --- eza: ls の代替 (アイコン・git 情報付き) ---
if type -q eza
    alias ls 'eza --git --icons --group-directories-first'
    alias la 'eza --git --icons --group-directories-first -a'
    alias ll 'eza --git --icons --group-directories-first -lh  --time-style iso'
    alias lla 'eza --git --icons --group-directories-first -lha --time-style iso'
    alias lt 'eza --git --icons --group-directories-first -a -T -L 3 -I ".git|.cache"'
end

# --- bat: cat の代替 (シンタックスハイライト付き) ---
if type -q bat
    alias cat bat
end

# --- GNU awk / sed: macOS 標準の BSD 版より機能が豊富 ---
if type -q gawk
    alias awk gawk
end
if type -q gsed
    alias sed gsed
end

# --- ripgrep / fd: grep / find の高速代替 ---
if type -q rg
    alias grep rg
end
if type -q fd
    alias find fd
end

# --- ディレクトリ操作 ---
alias mkdir 'mkdir -p' # 中間ディレクトリも自動作成
alias ... 'cd ../..'
alias .... 'cd ../../..'

# =============================================================================
# Abbreviations (abbr)
# =============================================================================

# --- Git ---
abbr -a g git
abbr -a ga 'git add'
abbr -a gc 'git commit'
abbr -a gcm 'git commit -m'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a gp 'git push'
abbr -a gpl 'git pull'
abbr -a gs 'git status'

# --- lazygit: TUI Git クライアント (tmux 新ウィンドウで起動) ---
abbr -a lg lazygit
function lg
    tmux new-window -n lazygit lazygit
end

# --- Docker ---
abbr -a d docker

# --- Python ---
abbr -a py python3
abbr -a python python3

# --- tmux ---
if type -q tmux
    abbr -a t tmux
    abbr -a ta 'tmux a -t' # 指定したセッションに戻る
    abbr -a tl 'tmux ls'
    abbr -a tn 'tmux new -s' # 名前付きで新規セッション開始
end
