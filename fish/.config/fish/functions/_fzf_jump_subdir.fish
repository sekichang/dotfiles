function _fzf_jump_subdir
    set -l selected (fd --type d --hidden --max-depth 3 --exclude .git --exclude node_modules . $PWD | fzf --prompt="jump to subdir> " --height 40% --layout reverse --border)
    if test -n "$selected"
        cd $selected
        commandline -f repaint
    end
end
