function _fzf_zoxide
    set -l dir (
        begin
            ghq list --full-path | awk '{printf "       - [ghq] %s\n", $0}'
            zoxide query --list --score | awk '{printf "%7.2f  [zi]  %s\n", $1, $2}'
        end | fzf \
            --reverse \
            --style=full:rounded \
            --height=75% \
            --margin=0,5% \
            --preview-window=down,50%,wrap \
            --preview 'eza -l --icons --sort modified -r --color=always --time-style iso {-1}' \
            --no-sort \
            --exact \
        | awk '{print $NF}'
    )
    if test -n "$dir"
        cd $dir
        # zoxide add $dir
        commandline -f repaint
    end
end
