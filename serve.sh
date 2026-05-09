#!/usr/bin/env bash
# Tiny local preview server — same paths as GitHub Pages.
# Run from the repo root, then open http://localhost:8000/
set -e
cd "$(dirname "$0")"
PORT="${1:-8000}"
echo
echo "  Card        → http://localhost:${PORT}/"
echo "  Map         → http://localhost:${PORT}/map/"
echo "  Making of   → http://localhost:${PORT}/process/"
echo
echo "  Ctrl-C to stop."
echo
exec python3 -m http.server "${PORT}"
