-- [[ plug.lua ]]
-- Packer will install this list of plugins
return require('packer').startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  -- Collection of common configurations for the Nvim LSP client
  use("neovim/nvim-lspconfig")
  -- Handy Rust Development Tools --
  use("simrat39/rust-tools.nvim")
  -- Visualize indicator for lsp progress in bottom right
  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end
  })
   -- Mason is a plugin to install and manage LSP servers 
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  -- Dracula Theme
  use({
    "nvim-lualine/lualine.nvim", -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  })
  use("Mofiqul/dracula.nvim")
  -- Fuzzy Finder
  use({
    "nvim-telescope/telescope.nvim",
    requires = { {'nvim-lua/plenary.nvim'} }
  })
  -- Auto-Pair
  use({"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  })
  use("puremourning/vimspector")

  -- File Tree Viewer
  use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")

  -- lsp-zero
  -- https://github.com/VonHeikemen/lsp-zero.nvim
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {
              'williamboman/mason.nvim',
              run = function()
                 pcall(vim.cmd, 'MasonUpdate')
              end,
          },
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
end)

