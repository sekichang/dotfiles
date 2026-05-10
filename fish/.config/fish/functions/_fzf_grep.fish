function _fzf_grep
    FZF_DEFAULT_COMMAND='rg --color=always --line-number --no-heading ""' \
        fzf-tmux -p 80% \
        --ansi \
        --disabled \
        --bind 'change:reload:rg --color=always --line-number --no-heading {q} || true' \
        --delimiter : \
        --preview 'bat --color=always --style=numbers --highlight-line {2} {1}' \
        --preview-window 'down:50%,+{2}+3/3'
end
