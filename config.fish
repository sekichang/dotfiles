set fish_greeting ""

set -gx TERM xterm-256color

set -gx EDITOR nvim

# alias
balias ls 'exa -h'
balias ll 'ls -l --icons --time-style iso'
balias la 'ls -a --icons'
balias lla 'll -a'
balias cat bat
balias g git
abbr -a ga 'git add'
abbr -a gco 'git commit'
abbr -a gch 'git checkout'
abbr -a gd 'git diff'
abbr -a gs 'git status'
balias d docker
alias vi nvim


# volta PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
