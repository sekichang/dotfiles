# Suppress greeting
set -g fish_greeting ""

# Environment Variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less

# XDG Base Directory
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

# Language / Locale
set -gx LANG ja_JP.UTF-8
set -gx LC_ALL ja_JP.UTF-8

# Color support (256color / TrueColor)
# Ghostty sets TERM=xterm-ghostty; fallback for other terminals
if test "$TERM" != xterm-ghostty
    set -gx TERM xterm-256color
    # set -gx TERM screen-256color
end
set -gx COLORTERM truecolor

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/go/bin
fish_add_path "$HOME/.cargo/bin"
fish_add_path $HOME/.bun/bin
set -gx BUN_INSTALL $HOME/.bun

# bun
# set --export BUN_INSTALL "$HOME/.bun"
# set --export PATH $BUN_INSTALL/bin $PATH

# Starship
if command -q starship
    starship init fish | source
end

# zoxide
if command -q zoxide
    zoxide init fish | source
end

# mise
if command -q mise
    mise activate fish | source
end

# neovim
if type -q nvim
    balias vi nvim
end

if type -q eza
    # balias ls 'eza --git --icons --group-directories-first'
    # balias la 'ls -a'
    # balias ll 'ls -lh --time-style iso'
    # balias lla 'll -a'
    # balias lt 'la -T -L 3 -I ".git|.cache"'

    balias ls 'eza --git --icons --group-directories-first'
    balias la 'eza --git --icons --group-directories-first -a'
    balias ll 'eza --git --icons --group-directories-first -lh --time-style iso'
    balias lla 'eza --git --icons --group-directories-first -lha --time-style iso'
    balias lt 'eza --git --icons --group-directories-first -a -T -L 3 -I ".git|.cache"'
end

# bat
if type -q bat
    balias cat bat
end

# awk
if type -q gawk
    balias awk gawk
end

# sed
if type -q gsed
    balias sed gsed
end

if type -q rg
    balias grep rg
end

if type -q fd
    balias find fd
end

balias mkdir 'mkdir -p'

# cd
balias ... 'cd ../..'
balias .... 'cd ../../..'

# git
abbr -a g git
abbr -a ga _fzf_git_add
abbr -a gc 'git commit'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a gcm 'git commit -m'
abbr -a gs 'git status'
abbr -a gp 'git push'

# lazygit
abbr -a lg lazygit
function lg
    tmux new-window -n lazygit lazygit
end

# docker
abbr -a d docker

# python
abbr -a py python3
abbr -a python python3

# tmux
if type -q tmux
    abbr -a t tmux
    abbr -a tl 'tmux ls'
    abbr -a tn 'tmux new -s ' # 名前をつけて新規セッション開始
end
