set -gx ZOXIDE_DATA_DIR "$XDG_DATA_HOME/zoxide"
set -gx _ZO_FZF_OPTS "
  --reverse
  --style=full:rounded
  --height 75%
  --margin 0,5%
  --preview-window=down,50%,wrap
  --preview 'eza -l --icons --sort modified -r --color=always --time-style iso {2..}'
  --no-sort
  --exact
"
set -x _ZO_FZF_OPTS "$_ZO_FZF_OPTS
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
  --color=selected-bg:#45475a
"
