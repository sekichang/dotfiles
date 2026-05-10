function _fzf_jump_parent_dirs
    set -l dir (pwd)
    set -l dirs

    while test $dir != /
        set dir (dirname $dir)
        set -a dirs $dir
    end

    set -l selected (string join \n $dirs | fzf \
      --prompt "jump to parent ❯ " \
      --height 80% \
      --layout reverse \
      --border \
      --preview-window=down,50%,wrap \
      --preview 'eza -l --icons --sort modified -r --color=always --time-style iso {-1}')

    if test -n "$selected"
        cd $selected
        commandline -f repaint
    end
end
