return {
   "mrcjkb/rustaceanvim",
   opts = {
      server = {
         on_attach = function(_, bufnr)
            vim.keymap.set("n", "<leader>cR", function()
               vim.cmd.RustLsp("codeAction")
            end, { desc = "Code Action", buffer = bufnr })
            vim.keymap.set("n", "<leader>dr", function()
               vim.cmd.RustLsp("debuggables")
            end, { desc = "Rust Debuggables", buffer = bufnr })
         end,
         default_settings = {
            -- rust-analyzer language server configuration
            ["rust-analyzer"] = {
               cargo = {
                  allFeatures = true,
                  loadOutDirsFromCheck = true,
                  runBuildScripts = true,
               },
               -- Add clippy lints for Rust.
               checkOnSave = {
                  allFeatures = true,
                  command = "clippy",
                  extraArgs = { "--no-deps" },
               },
               procMacro = {
                  enable = true,
                  ignored = {
                     ["async-trait"] = { "async_trait" },
                     ["napi-derive"] = { "napi" },
                     ["async-recursion"] = { "async_recursion" },
                  },
               },
            },
         },
      },
   },
}
