# Setup Instructions

- Install Pakcer
Install the Packer package manager via the following instructions
```
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
```

- Clone repo
```
~/.config/git clone git@github.com:aven-arlington/nvim.git
```

- Install Packages
Open the NeoVim .config directory
```
~/.config/nvim/nvim .
```
The first time NeoVim is opend there will be alot of errors. Press any key to get past them and then run the following command
```
:PackerInstall
```

## Ubuntu
- [Install Neovim Build Prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
- [Clone the NeoVim Repository](https://github.com/neovim/neovim)
- Build NeoVim
```
   make CMAKE_BUILD_TYPE=RelWithDebInfo
   sudo make install
```
