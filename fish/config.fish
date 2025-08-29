set fish_greeting ""

# set -gx TERM xterm-256color
set -gx TERM screen-256color

set -gx EDITOR nvim

# alias
if type -q nvim
    balias vi nvim
end

if type -q eza
    balias ls 'eza --git --icons --group-directories-first'
    balias la 'ls -a'
    balias ll 'ls -lh --time-style iso'
    balias lla 'll -a'
    balias lt 'la -T -L 3 -I ".git|.cache"'
end

# bat
if type -q bat
    alias bat 'bat --theme="Solarized (dark)"'
    balias cat bat
end

# for ubuntu
if type -q batcat
    alias bat 'batcat --theme="gruvbox-dark"'
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

abbr mkdir 'mkdir -p'

# cd
balias ... 'cd ../..'
balias .... 'cd ../../..'

# git
abbr g git
abbr -a ga __fzf_git_add
abbr -a gc 'git commit'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a gcm 'git commit -m'
abbr -a gs 'git status'
abbr -a gp 'git push'

# docker
abbr d docker

# python
abbr -a py python3
balias python python3

# tmux
if type -q tmux
    abbr t tmux
    abbr -a tl 'tmux ls'
    abbr -a tn 'tmux new -s' # 名前をつけて新規セッション開始
end

# homebrew PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# volta PATH
set -gx VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"
