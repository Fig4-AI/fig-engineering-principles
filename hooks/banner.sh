#!/bin/sh
DIR=$(dirname "$0")
MSG=$(sed 's/\\/\\\\/g; s/"/\\"/g' "$DIR/banner.txt" 2>/dev/null |
  awk 'NR>1{printf "\\n"} {printf "\\u001b[38;5;46m%s\\u001b[0m", $0}')
[ -n "$MSG" ] || exit 0
printf '{"systemMessage":"\\n%s"}\n' "$MSG"
