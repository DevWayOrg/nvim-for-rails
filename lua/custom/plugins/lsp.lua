return {
  "williamboman/mason.nvim",
  { "folke/neodev.nvim", opts = {} },
  "hrsh7th/cmp-nvim-lsp",
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "html", "solargraph", "ruby_lsp", "tsserver" },
      })
      require("mason-lspconfig").setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name) -- default handler (optional)
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
      })
    end,
  },
  "neovim/nvim-lspconfig",
}
