# Setup Instructions

## Ubuntu
- [Install Neovim Build Prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
- [Clone the NeoVim Repository](https://github.com/neovim/neovim)
- [Build NeoVim](https://github.com/neovim/neovim/wiki/Building-Neovim)
```
   make CMAKE_BUILD_TYPE=RelWithDebInfo
   sudo make install
   mkdir -p ~/.config/nvim
```
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

