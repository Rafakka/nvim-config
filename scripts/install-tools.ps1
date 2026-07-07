
if (-not (Test-Command "rg")) {

    winget install BurntSushi.ripgrep

}

if (-not (Test-Command "fd")) {

    winget install sharkdp.fd

}

if (-not (Test-Command "tree-sitter")) {

    npm install -g tree-sitter-cli

}

if (-not (Test-Command "nvim")) {

    winget install Neovim.Neovim

}
