function _fzf_recent_files
    set -l selected (nvim --headless --cmd 'rshada' --cmd 'for f in v:oldfiles | call writefile([f], "/tmp/nvim_oldfiles", "a") | endfor' --cmd 'qa' 2>/dev/null
        cat /tmp/nvim_oldfiles | grep -v "^term://" | while read f
            if test -f $f
                echo $f
            end
        end | fzf \
        --prompt "recent files ❯ " \
        --height 90% \
        --preview 'bat --style=numbers --color=always {}' \
        --preview-window=down,60%,wrap)

    rm -f /tmp/nvim_oldfiles

    if test -n "$selected"
        nvim $selected
        commandline -f repaint
    end
end
