#!/usr/bin/env bash
# ============================================
# The Arcane Vault — Start Game (Mac / Linux)
# ============================================
# Usage: ./start.sh
# Opens the game at http://localhost:8766
# ============================================
# Prerequisites: Python 3 (https://www.python.org/downloads/)
# ============================================

# --- Check Python ---
PYTHON_CMD=""
if command -v python3 &> /dev/null; then
  PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
  PYTHON_CMD="python"
fi

if [ -z "$PYTHON_CMD" ]; then
  echo ""
  echo "  ERROR: Python is not installed."
  echo ""
  echo "  Install Python 3:"
  echo "    Mac:   brew install python3"
  echo "    Linux: sudo apt install python3  (or your distro's package manager)"
  echo "    All:   https://www.python.org/downloads/"
  echo ""
  exit 1
fi

PORT=8766
DIR="$(cd "$(dirname "$0")/frontend/modules/game/src" && pwd)"

# --- Check game files exist ---
if [ ! -f "$DIR/index.html" ]; then
  echo ""
  echo "  ERROR: Game files not found at $DIR"
  echo "  Make sure you run this script from the memory-game-demo directory."
  echo ""
  exit 1
fi

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║     The Arcane Vault — Memory Match  ║"
echo "  ╚══════════════════════════════════════╝"
echo ""
echo "  Python:  $PYTHON_CMD"
echo "  Server:  http://localhost:${PORT}"
echo "  Serving: ${DIR}"
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
$PYTHON_CMD -m http.server ${PORT} --directory "${DIR}"
