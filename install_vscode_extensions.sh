#!/bin/bash

# List of VSCode extensions to install
extensions=(
    aaron-bond.better-comments
    akamud.vscode-theme-onedark
    albert.tabout
    christian-kohler.path-intellisense
    donjayamanne.python-environment-manager
    esbenp.prettier-vscode
    github.copilot
    github.copilot-chat
    hashicorp.terraform
    ms-azure-devops.azure-pipelines
    ms-azuretools.vscode-azureresourcegroups
    ms-python.black-formatter
    ms-python.debugpy
    ms-python.flake8
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-vscode.azure-account
    pkief.material-icon-theme
    sandcastle.vscode-open
    usernamehw.errorlens
    vscodevim.vim
)

# Loop through the list and install each extension
for extension in "${extensions[@]}"
do
    echo "Installing $extension..."
    code --install-extension $extension
done

echo "All extensions installed successfully."
