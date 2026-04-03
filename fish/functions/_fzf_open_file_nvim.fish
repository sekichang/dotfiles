function _fzf_open_file_nvim
    set -l selected (fd --type f --hidden --exclude .git | fzf --prompt "open file ❯ " --height 40% --layout reverse --border --preview "bat --color=always {}")

    if test -n "$selected"
        nvim $selected
        commandline -f repaint
    end
end
