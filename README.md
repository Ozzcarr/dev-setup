# Download WSL2
The first step is downloading and setting up WSL2 for development. If you're on Linux this step can be skipped and you can start with [setting up linux](#setup-linux).

To download WSL2, open PowerShell or Windows Command Prompt in **administrator mode** and run the following command.
```powershell
wsl --install
```

# Setup linux
The linux setup involves updating the packages, downloading the necessary packages and changing shell.
## Update packages
After creating an account, run the following command to update all packages.
```shell
sudo apt update -y && sudo apt full-upgrade -y &&
sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y
```
## Downloading necessary packages
```shell
sudo apt install git curl npm build-essential zip unzip -y
```
## Changing shell
To change shell to Oh My Zsh, first download zsh with the following command.
```shell
sudo apt install zsh
```
Then Oh My Zsh can be installed.
```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
```
Reboot the computer after the shell has been installed.
## Connect to Github CLI
First run the following command to download Github CLI.
```shell
sudo apt install gh
```
Then connect to Github CLI by running the following command.
```shell
gh auth login
```

# Setting up programming languages
This section guides you through setting up some programming languages to get ready for development.
## Python
To install miniconda and python, run the following command.
```shell
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
```
After installing miniconda, initialize it with the following command.
```shell
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```

# Setting up code editor
VS Code is used as the code editor with Neovim in the background.
## Setup neovim
To setup neovim to be used in VS Code, brew has to be installed.
### Install brew
Run the following command to install homebrew.
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### Install neovim
After brew has been installed, install neovim by running the following command.
```shell
brew install neovim
```
### Setup neovim config
Run the following command to enter the config file.
```shell
nvim ~/.config/nvim/init.lua
```
When in the file, paste the file contents from the init.lua file in this repository.

## Setup VS Code
After linux has been set up, VS Code can be installed.
### Download VS Code
Install VS Code from their [website](https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1e16e1e6214d7c44d078b1f0607b2388f29d729/VSCodeUserSetup-x64-1.91.1.exe).
When prompted to **Select Additional Tasks** during installation, be sure to check the **Add to PATH** option so you can easily open a folder in WSL using the code command.
### Install extensions
When VS Code has been downloaded, install the extensions by running the following command in WSL. The VS code extensions can be installed as you wish.
```shell
bash <(wget -qO- https://raw.githubusercontent.com/Ozzcarr/dev-setup/main/install_vscode_extensions.sh)
```
### Download font
Download the [font](https://raw.githubusercontent.com/Ozzcarr/dev-setup/main/MonaspaceArgonVarVF%5Bwght%2Cwdth%2Cslnt%5D.ttf) that will be used.
When the font is downloaded, copy it and put it in "C:\Windows\Fonts".
### Setup settings and keybinds
Copy the [settings](https://github.com/Ozzcarr/dev-setup/blob/main/settings.json) and [keybinds](https://github.com/Ozzcarr/dev-setup/blob/main/keybindings.json) into the *settings.json* and *keybindings.json* files in VS Code.
