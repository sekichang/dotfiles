function _fzf_jump_subdir
    set -l selected (fd --type d --hidden --max-depth 3 --exclude .git --exclude node_modules . $PWD | fzf \
      --prompt="jump to subdir> " \
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
