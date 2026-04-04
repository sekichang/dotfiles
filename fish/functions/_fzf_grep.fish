function _fzf_grep
    FZF_DEFAULT_COMMAND='rg --color=always --line-number --no-heading ""' \
        fzf \
        --ansi \
        --disabled \
        --bind 'change:reload:rg --color=always --line-number --no-heading {q} || true' \
        --delimiter : \
        --preview 'bat --color=always --style=numbers --highlight-line {2} {1}' \
        --preview-window 'right:50%,+{2}+3/3'
end
