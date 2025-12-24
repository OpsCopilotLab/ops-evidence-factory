#!/usr/bin/env bash
set -euo pipefail
# Create a checksum manifest for a folder (evidence integrity)
DIR="${1:-.}"
OUT="${2:-MANIFEST.sha256}"
( cd "$DIR" && find . -type f ! -name "$OUT" -print0 | sort -z | xargs -0 sha256sum ) > "$OUT"
echo "Wrote $DIR/$OUT"
