function fish_user_key_bindings
    fzf --fish | source

    # Ctrl+J — zoxide interactive (zi)
    # bind \cj 'zi; commandline -f repaint'
    bind \cj _fzf_zoxide

    # Ctrl+O - 直近のファイルを選択してnvimでopen
    bind \co _fzf_recent_files

    # Ctrl+G - grep
    bind \cg _fzf_grep

    # Alt+J - 親ディレクトリ以上の祖先をfzfで選択してjump
    # bind \e\[44\;5u _fzf_jump_parent_dirs
    bind \ej _fzf_jump_parent_dirs

    # Alt+K - サブディレクトリをfzfで選択してjump
    # bind \e\[46\;5u _fzf_jump_subdir
    bind \ek _fzf_jump_subdir

end
