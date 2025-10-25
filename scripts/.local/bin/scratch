#!/usr/bin/env bash
set -e
set -u
set -o pipefail

file="$(mktemp)"
echo "Editing $file"
exec "$EDITOR" "$file"
