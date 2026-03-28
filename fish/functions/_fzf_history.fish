function _fzf_history
    set -l selected (builtin history | sort | uniq -c | sort -rn | awk '{$1=""; sub(/^ /, ""); print}' | fzf --prompt "history ❯ " --height 40% --layout reverse --border --no-sort)

    if test -n "$selected"
        commandline $selected
        commandline -f repaint
    end
end
