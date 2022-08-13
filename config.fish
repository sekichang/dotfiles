set fish_greeting ""

set -gx TERM xterm-256color

set -gx EDITOR nvim

# alias
if type -q nvim
  balias vi nvim
end
if type -q exa
  balias ls 'exa -h'
  balias ll 'ls -l --git --icons --time-style iso'
  balias la 'ls -a --icons'
  balias lla 'll -a'
end
if type -q bat
  balias cat bat
end
if type -q gawk
  balias awk gawk
end
if type -q gsed
  balias sed gsed
end
abbr g git
abbr -a ga __fzf_git_add
abbr -a gco 'git commit'
abbr -a gch 'git checkout'
abbr -a gd 'git diff'
abbr -a gs 'git status'
abbr d docker


# volta PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
