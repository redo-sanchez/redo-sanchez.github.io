#!/usr/bin/env bash
# Regenerate assets/cv/Albert_Redo-Sanchez_CV.pdf from the /cv/ page.
# Run from anywhere after editing _data/positions.yml, _data/profile.yml,
# _includes/publications-list.md or _includes/talks.md, then commit the PDF.
#
# Needs: Ruby + Bundler (bundle install), Python 3, Google Chrome.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/assets/cv/Albert_Redo-Sanchez_CV.pdf"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
PORT="${PORT:-4321}"
TMP="$(mktemp -d)"
trap '{ kill "${SERVER_PID:-}" && wait "${SERVER_PID:-}"; } 2>/dev/null || true; rm -rf "$TMP"' EXIT

cd "$ROOT"
bundle exec jekyll build --quiet --destination "$TMP/site"

python3 -m http.server "$PORT" --bind 127.0.0.1 --directory "$TMP/site" >/dev/null 2>&1 &
SERVER_PID=$!
for _ in $(seq 1 50); do
  curl -s -o /dev/null "http://127.0.0.1:$PORT/cv/" && break
  sleep 0.2
done

mkdir -p "$(dirname "$OUT")"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --user-data-dir="$TMP/chrome" --virtual-time-budget=15000 \
  --print-to-pdf="$OUT" "http://127.0.0.1:$PORT/cv/" >/dev/null 2>&1

echo "Wrote $OUT"
