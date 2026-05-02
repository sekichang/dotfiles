function y
    set _FZF_OPTS "$FZF_DEFAULT_OPTS
--height 90%
--preview 'bat --style=numbers --color=always {}'
--preview-window=right,50%,wrap"

    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    FZF_DEFAULT_OPTS="$_FZF_OPTS" command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
