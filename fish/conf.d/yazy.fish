set -gx YAZI_ZOXIDE_OPTS "
--reverse
--style=full:rounded
--height 75%
--margin 0,5%
--preview-window=down,50%,wrap
--preview 'eza -l --icons --sort modified -r --color=always --time-style iso {2..}'
--no-sort
--exact
"
