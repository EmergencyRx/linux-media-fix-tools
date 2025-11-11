#!/usr/bin/env bash
set -euo pipefail

echo "[check-codecs] Checking for common media tools"

missing=0

for pkg in ffmpeg vlc mpv; do
  if command -v "$pkg" >/dev/null 2>&1; then
    echo "$pkg: found"
  else
    echo "$pkg: not found"
    missing=1
  fi
done

if [ "$missing" -ne 0 ]; then
  echo
  echo "One or more common media tools are missing."
  echo "Install them using your distribution's package manager."
fi
