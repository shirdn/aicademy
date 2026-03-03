# ============================================
# The Arcane Vault — Start Game (Windows)
# ============================================
# Usage: .\start.ps1
# Opens the game at http://localhost:8766
# ============================================
# Prerequisites: Python 3 (https://www.python.org/downloads/)
# ============================================

# --- Check Python ---
$PythonCmd = $null
if (Get-Command py -ErrorAction SilentlyContinue) {
    $PythonCmd = "py"
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    $PythonCmd = "python"
} elseif (Get-Command python3 -ErrorAction SilentlyContinue) {
    $PythonCmd = "python3"
}

if (-not $PythonCmd) {
    Write-Host ""
    Write-Host "  ERROR: Python is not installed." -ForegroundColor Red
    Write-Host ""
    Write-Host "  Install Python 3 from: https://www.python.org/downloads/" -ForegroundColor Yellow
    Write-Host "  Make sure to check 'Add Python to PATH' during install." -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

$Port = 8766
$Dir = Join-Path $PSScriptRoot "frontend\modules\game\src"

# --- Check game files exist ---
if (-not (Test-Path (Join-Path $Dir "index.html"))) {
    Write-Host ""
    Write-Host "  ERROR: Game files not found at $Dir" -ForegroundColor Red
    Write-Host "  Make sure you run this script from the memory-game-demo directory." -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

Write-Host ""
Write-Host "  +======================================+" -ForegroundColor Magenta
Write-Host "  |     The Arcane Vault - Memory Match  |" -ForegroundColor Magenta
Write-Host "  +======================================+" -ForegroundColor Magenta
Write-Host ""
Write-Host "  Python:  $PythonCmd" -ForegroundColor Gray
Write-Host "  Server:  " -NoNewline
Write-Host "http://localhost:$Port" -ForegroundColor Cyan
Write-Host "  Serving: $Dir"
Write-Host "  Press Ctrl+C to stop"
Write-Host ""

# Open browser
Start-Process "http://localhost:$Port"

# Start server
& $PythonCmd -m http.server $Port --directory "$Dir"
