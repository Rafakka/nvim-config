Write-Host ""
Write-Host "=== Installing Development Tools ==="
Write-Host ""

winget install BurntSushi.ripgrep
winget install sharkdp.fd

npm install -g tree-sitter-cli
npm install -g neovim

pip install pynvim

Write-Host ""
Write-Host "Done!"
