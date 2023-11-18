# Setup Instructions

## Windows
### [Install Neovim Build Prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
- Setup OhMyZsh

- Create Symlinks to a ~/.config
In Windows CMD (PowerShell didn't work)
```
   cd C:\cygwin64\home\<name>
   mkdir nvim nvim-data
   mklink /J C:\Users\<name>\AppData\Local\nvim C:\cygwin64\home\<name>\.config\nvim-data
   mklink /J C:\Users\<name>\AppData\Local\nvim-data C:\cygwin64\home\<name>\.config\nvim-data 
```

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
- Clone the Repository
Packer is no longer maintained as of Aug 2023.
Instead we now use the LazyVim template with the lazy.nvim package management backend.
[Instructions Here](https://github.com/folke/lazy.nvim)
[Documentation for LazyVim](https://www.lazyvim.org/)
```
   cd ~/.config
   git clone git@github.com:aven-arlington/nvim.git 
```

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

