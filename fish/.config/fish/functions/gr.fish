function gr --description 'git restore with fzf multi-select'
    set -l changed (git diff --name-only 2>/dev/null)
    set -l staged (git diff --cached --name-only 2>/dev/null)
    set -l all (string join \n $changed $staged | sort -u)

    if test -z "$all"
        echo "No modified files."
        return 0
    end

    set -l selected (
        string join \n $all \
        | fzf --multi \
              --prompt='restore> ' \
              --preview='git diff --color=always -- {1} 2>/dev/null | head -60' \
              --preview-window='right:60%' \
              --bind='ctrl-a:select-all' \
              --height=80%
    )

    if test -z "$selected"
        return 0
    end

    for f in $selected
        if contains -- $f $staged
            git restore --staged -- $f
        end
        if contains -- $f $changed
            git restore -- $f
        end
    end
end
