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
      vim.g.wakatime_api_key = WAKATIME_API_KEY
    end,
  },
  {
   "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()'
  },
  {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Logo Go em ASCII
    dashboard.section.header.val = {
[[                                                  ]],
[[    _  _     ____     ____   _  _  __    __  __   ]],
[[   F L L]   F ___J   F __ ] FJ  L] FJ   F  \/  ]  ]],
[[  J   \| L J |___:  J |--| J |  | J  L J |\__/| L ]],
[[  | |\   | | _____| | |  | J J  F |  | | |`--'| |  ]],
[[  F L\\  J F L____: F L__J J\ \/ /F  J F L    J J  ]],
[[ J__L \\__J________J\______/\\__/J____J__L    J__L ]],
[[ |__L  J__|________|J______F \__/|____|__L    J__| ]],
[[                                                   ]],

    }

    -- Botões
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Encontrar arquivo", ":Telescope find_files<CR>"),
      dashboard.button("n", "  Novo arquivo", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Arquivos recentes", ":Telescope oldfiles<CR>"),
      dashboard.button("g", "  Buscar texto", ":Telescope live_grep<CR>"),
      dashboard.button("c", "  Configurações", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "  Sair", ":qa<CR>"),
    }

    -- Footer opcional
    dashboard.section.footer.val = [[   A persistência é o caminho do êxito.              ]]

    -- Carregar layout
    alpha.setup(dashboard.opts)
  end,
  },
  {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
  },
  {
    "nvim-telescope/telescope.nvim", 
    dependencies = {'nvim-lua/plenary.nvim'},
  },
}
return plugins
