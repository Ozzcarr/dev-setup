#!/bin/bash

# List of VSCode extensions to install
extensions=(
    christian-kohler.path-intellisense
    donjayamanne.python-environment-manager
    esbenp.prettier-vscode
    github.copilot
    github.copilot-chat
    mechatroner.rainbow-csv
    ms-python.black-formatter
    ms-python.debugpy
    ms-python.flake8
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    ms-vscode.cmake-tools
    ms-vscode.cpptools
    ms-vscode.cpptools-extension-pack
    ms-vscode.cpptools-themes
    ms-vscode.makefile-tools
    shd101wyy.markdown-preview-enhanced
    twxs.cmake
    xaver.clang-format
)

# Loop through the list and install each extension
for extension in "${extensions[@]}"
do
    echo "Installing $extension..."
    code --install-extension $extension
done

echo "All extensions installed successfully."
