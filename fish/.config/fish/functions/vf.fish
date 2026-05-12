function vf
    set -l selected (fd --type f --hidden --exclude .git | \
      fzf-tmux -p 80% \
      --prompt "open file ❯ " \
      --height 40% \
      --layout reverse \
      --border \
      --preview "bat --color=always {}")

    if test -n "$selected"
        nvim $selected
        commandline -f repaint
    end
end
