#!/usr/bin/env bash
set -euo pipefail

echo "[check-codecs] Example check for common media tools on Arch-based systems."
pacman -Qi ffmpeg vlc mpv  >/dev/null 2>&1 || echo "One or more core media packages are not installed."
