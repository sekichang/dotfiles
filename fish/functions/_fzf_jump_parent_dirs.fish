function _fzf_jump_parent_dirs
    set -l dir (pwd)
    set -l dirs

    while test $dir != /
        set dir (dirname $dir)
        set -a dirs $dir
    end

    set -l selected (string join \n $dirs | fzf --prompt "jump to parent ❯ " --height 40% --layout reverse --border)

    if test -n "$selected"
        cd $selected
        commandline -f repaint
    end
end
