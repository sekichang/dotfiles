function _fzf_zoxide
    set -l dir (begin
        ghq list --full-path | awk '{printf "       - [ghq] %s\n", $0}'
        zoxide query --list --score | awk '{printf "%7.2f  [zi]  %s\n", $1, $2}'
    end | fzf --height 40% --reverse --prompt "zoxide> " \
        --ansi \
        | awk '{print $NF}')

    if test -n "$dir"
        cd $dir
        zoxide add $dir
        commandline -f repaint
    end
end
