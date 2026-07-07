Write-Host ""
Write-Host "=== Rafael Neovim Bootstrap ==="
Write-Host ""

. "$PSScriptRoot\scripts\helpers.ps1"

. "$PSScriptRoot\scripts\install-node.ps1"

. "$PSScriptRoot\scripts\install-python.ps1"

. "$PSScriptRoot\scripts\install-tools.ps1"

Write-Host ""
Write-Host "Starting Neovim..."
Write-Host ""

nvim
