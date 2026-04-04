set -x FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
set -x FZF_DEFAULT_OPTS '
  --layout reverse
  --style=full:rounded
  --height 45%
  --margin 0,5%
'
set -x FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
  --color=selected-bg:#45475a
"
set -x FZF_CTRL_T_COMMAND 'fd --type f --hidden --follow --exclude .git --exclude node_modules'
set -x FZF_CTRL_T_OPTS '
  --preview "bat --color=always --style=numbers {}"
  --preview-window right:50%
'
set -x FZF_CTRL_R_OPTS '
  --with-nth 2..
  --preview "echo {2..}"
  --preview-window down:3:wrap
  --bind "ctrl-y:execute-silent(echo -n {2..} | pbcopy)"
'
