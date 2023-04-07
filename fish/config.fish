set fish_greeting ""

set -gx TERM xterm-256color

set -gx EDITOR nvim

# alias
if type -q nvim
  balias vi nvim
end
if type -q exa
  balias ls 'exa -h --git --icons'
  balias la 'ls -a'
  balias ll 'ls -l --time-style iso'
  balias lla 'll -a'
  balias lt 'la -T -L 3 -I ".git|.cache"'
end
if type -q bat
  alias bat 'bat --theme="Monokai Extended"'
  balias cat bat
end
# for ubuntu
if type -q batcat
  alias bat 'batcat --theme="Monokai Extended"'
  balias cat bat
end
if type -q gawk
  balias awk gawk
end
if type -q gsed
  balias sed gsed
end
# balias mkdir 'mkdir -p'
balias ... 'cd ../..'
balias .... 'cd ../../..'
abbr g git
abbr -a ga __fzf_git_add
abbr -a gc 'git commit'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a gs 'git status'
abbr -a gp 'git push'
abbr d docker
if type -q tmux
  abbr t tmux
  abbr -a tl 'tmux ls'
end

# homebrew PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# volta PATH
set -gx VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"
