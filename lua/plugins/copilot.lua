return {
   "zbirenbaum/copilot.lua",
   cmd = "Copilot",
   build = ":Copilot auth",
   opts = {
      -- Suggestions and Panel are recomended to be disabled
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
         rust = true,
         yaml = true,
         json = true,
         markdown = true,
         help = true,
      },
   },
}
