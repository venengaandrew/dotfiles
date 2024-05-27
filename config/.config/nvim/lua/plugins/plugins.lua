local plugins = {
  {
    "christoomey/vim-tmux-navigator"    
  },
  {
    "zbirenbaum/copilot.lua",
    opts = function ()
      return require "configs.copilot"
    end,
    config = function(_, opts)
      require("copilot").setup(opts)
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "rust-analyzer",
        "python-lsp-server",
        "lua-language-server"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }
}
return plugins

