-- [[ init.lua ]]
-- Require packer as a package manager --
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('load_plugins.plug')            -- Install Plugins
require('load_plugins.keymaps')         -- Configure Keymaps
require('load_plugins.nvim_options')    -- Set NeoVim Specific Options

-- the first run will install packer and our plugins
if packer_bootstrap then
  require("packer").sync()
  return
end

