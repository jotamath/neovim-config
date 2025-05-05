local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
      },
    },
  },
  --{
  --  "mfussenegger/nvim-dap",
  --  init = function()
  --    require("mappings").load_mappings "dap"
  --  end,
  --},
  --{
  --  "leoluz/nvim-dap-go",
  --  ft = "go",
  --  dependencies = "mfussenegger/nvim-dap",
  --  config = function(_, opts)
  --    require("dap-go").setup(opts)
  --    require("mappings").load_mappings "dap-go"
  --  end,
  --},
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.none-ls"
    end,
  },
  
}
return plugins
