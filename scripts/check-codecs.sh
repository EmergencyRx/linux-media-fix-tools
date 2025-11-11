#!/usr/bin/env bash
set -euo pipefail

echo "[check-codecs] Checking for common media tools"

for cmd in ffmpeg vlc mpv; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "$cmd: found"
  else
    echo "$cmd: not found"
  fi
done

echo
echo "[info] Install missing tools using your distribution's package manager."
