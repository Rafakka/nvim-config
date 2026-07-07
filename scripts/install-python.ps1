
if (-not (Test-Command "python")) {

    winget install Python.Python.3.14

}

pip install pynvim

npm install -g neovim
