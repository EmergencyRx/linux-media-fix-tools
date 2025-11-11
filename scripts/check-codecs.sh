#!/usr/bin/env bash
set -euo pipefail

echo "[check-codecs] Checking for common media tools and libraries"

check_cmd() {
  local name="$1"
  if command -v "$name" >/dev/null 2>&1; then
    echo "$name: found"
  else
    echo "$name: not found"
  fi
}

check_cmd ffmpeg
check_cmd vlc
check_cmd mpv

echo
echo "[info] If players are missing, install them using your distribution's package manager."
echo "[info] This script is non-destructive and only reports presence."
