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
  {
    "wakatime/vim-wakatime",
    lazy = false,
    config = function()
      vim.g.wakatime_api_key = "waka_31289d3d-f875-4435-8238-aa095a067ac8"
    end,
  }
}
return plugins
