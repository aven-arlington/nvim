# Setup Instructions

## Windows
### [Install Neovim Build Prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
- Setup OhMyZsh

- Install CMake via pip
```
   pip install cmake
```

- Install Clang
[Instructions](https://clang.llvm.org/get_started.html)
Note that the instructions are pretty detailed.
Make the Visual Studio solution file with the cmake command in PowerShell with administrator privledges. Make sure to change the version to "Visual Studio 17 2022" for the most recent version.
In Visual Studio, Switch to release!
Then open the CMakePredefinedTargets folder and build ALL_Build.
Then build the INSTALL project.
Optional: Delete the llvm-project repo folder or clean the solution to free up about 10G of disk space.

### Clone and Build Neovim
- [Clone the NeoVim Repository](https://github.com/neovim/neovim)
- [Build NeoVim](https://github.com/neovim/neovim/wiki/Building-Neovim#building-on-windows)

### Configure the Neovim installation
- Clone the Configuration Repository
```
   cd C:\dev\repos\
   git clone git@github.com:aven-arlington/nvim.git
   .\copy_contents_to_app_data.ps1
```

We have to run the copy_contents_to_app_data.ps1 script since Windows places the nvim folder directly 
in the AppData/Local folder and I don't want a git repo there.

### Install Copilot Prerequisites
Copilot requires Node.js as a prerequisite. Before we can install that we need to install the Node Version Manager (nvm).
[Instructions](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-windows) 

Then we need the neovim package installed to satisfy :checkhealth
npm install -g neovim

## Ubuntu
### [Install Neovim Build Prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
- [Clone the NeoVim Repository](https://github.com/neovim/neovim)
- [Build NeoVim](https://github.com/neovim/neovim/wiki/Building-Neovim)
```
   make CMAKE_BUILD_TYPE=RelWithDebInfo
   sudo make install
   mkdir -p ~/.config/nvim
```
### Configure the Neovim installation
- Clone the Configuration Repository
```
   cd ~
   mkdir .config
   cd .config
   git clone git@github.com:aven-arlington/nvim.git
```

- Install Copilot
Copilot requires Node.js as a prerequisite. Before we can install that we need to install the [Node Version Manager (nvm)]. 
```
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

Next we need to [install Node.js]
```
   nvm install --lts
```

Finally we need to install the neovim package to satisfy :checkhealth
```
   npm install -g neovim
```

## Common Instructions
### Finally Configure and Tweak Neovim
[Instructions Here](https://github.com/folke/lazy.nvim)
[Documentation for LazyVim](https://www.lazyvim.org/)
- Open and Update Neovim
Update LazyVim and Plugins
```
   :Lazy
   :MasonUpdate
   :checkhealth
```
- Address any Issues
Analyze the results of ":checkhealth" and install anything that is missing.
Examples: rg, fdfind, lazygit