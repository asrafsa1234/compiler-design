#!/usr/bin/env bash
set -uo pipefail
fail=0
for dir in Q[0-9][0-9]_*/; do
  if [ -e "${dir}program.l" ]; then
    flex -o /tmp/cd_lex.c "${dir}program.l" && gcc -w /tmp/cd_lex.c -o /tmp/cd_prog || { echo "BUILD FAILED: $dir"; fail=$((fail+1)); continue; }
  else
    gcc -std=c11 -w "${dir}program.c" -o /tmp/cd_prog || { echo "BUILD FAILED: $dir"; fail=$((fail+1)); continue; }
  fi
  /tmp/cd_prog < "${dir}input.txt" > "${dir}output.txt" 2>&1 || fail=$((fail+1))
  echo "=== $dir ==="
  cat "${dir}output.txt"
  if command -v convert >/dev/null; then
    convert -background '#111827' -fill white -font DejaVu-Sans-Mono -pointsize 16 -size 900x caption:@"${dir}output.txt" "${dir}output.png" 2>/dev/null || true
  fi
done
echo "Failures: $fail"
exit "$((fail>0))"
