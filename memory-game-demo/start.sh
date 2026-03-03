#!/usr/bin/env bash
# ============================================
# The Arcane Vault — Start Game
# ============================================
# Usage: ./start.sh
# Opens the game at http://localhost:8766
# ============================================

PORT=8766
DIR="$(cd "$(dirname "$0")/frontend/modules/game/src" && pwd)"

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║     The Arcane Vault — Memory Match  ║"
echo "  ╚══════════════════════════════════════╝"
echo ""
echo "  Starting server on http://localhost:${PORT}"
echo "  Serving from: ${DIR}"
echo "  Press Ctrl+C to stop"
echo ""

# Open browser (cross-platform)
if command -v xdg-open &> /dev/null; then
  xdg-open "http://localhost:${PORT}" &
elif command -v open &> /dev/null; then
  open "http://localhost:${PORT}" &
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
  cmd.exe /c start "http://localhost:${PORT}" &
fi

# Start server
python -m http.server ${PORT} --directory "${DIR}"
