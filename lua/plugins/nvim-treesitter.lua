return {
   "nvim-treesitter/nvim-treesitter",
   opts = function(_, opts)
      opts.ensure_installed = {
         "c",
         "diff",
         "html",
         "json",
         "lua",
         "luadoc",
         "luap",
         "markdown",
         "markdown_inline",
         "python",
         "query",
         "regex",
         "rust",
         "toml",
         "vim",
         "vimdoc",
         "yaml",
      }
      vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
   end,
}
