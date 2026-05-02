#!/bin/bash
branch=$(git -C "$1" symbolic-ref --short HEAD 2>/dev/null)
[ -n "$branch" ] && echo "  $branch "
