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
   cd ~/.config/nvim
   git clone ...
```
