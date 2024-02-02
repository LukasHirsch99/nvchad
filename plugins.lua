local plugins = {
  { "christoomey/vim-tmux-navigator", lazy = false },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    commit = "f2778bd1a28b74adf5b1aa51aa57da85adfa3d16",
  },

  {"elkowar/yuck.vim", lazy = false},

  -- {
  --   "akinsho/flutter-tools.nvim",
  --   lazy = false,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "stevearc/dressing.nvim", -- optional for vim.ui.select
  --   },
  --   config = true,
  -- },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
      },
    },
  },
}

return plugins
