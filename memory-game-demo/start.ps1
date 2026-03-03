# ============================================
# The Arcane Vault — Start Game (Windows)
# ============================================
# Usage: .\start.ps1
# Opens the game at http://localhost:8766
# ============================================

$Port = 8766
$Dir = Join-Path $PSScriptRoot "frontend\modules\game\src"

Write-Host ""
Write-Host "  +======================================+" -ForegroundColor Magenta
Write-Host "  |     The Arcane Vault - Memory Match  |" -ForegroundColor Magenta
Write-Host "  +======================================+" -ForegroundColor Magenta
Write-Host ""
Write-Host "  Starting server on " -NoNewline
Write-Host "http://localhost:$Port" -ForegroundColor Cyan
Write-Host "  Serving from: $Dir"
Write-Host "  Press Ctrl+C to stop"
Write-Host ""

# Open browser
Start-Process "http://localhost:$Port"

# Start server
python -m http.server $Port --directory "$Dir"
