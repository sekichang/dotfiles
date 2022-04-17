set fish_greeting ""

set -gx TERM xterm-256color

# alias
balias ls 'exa -h'
balias ll 'ls -l --icons --time-style iso'
balias la 'ls -a --icons'
balias lla 'll -a'
balias cat bat
balias g git 
balias d docker 
alias vi nvim


# volta PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
