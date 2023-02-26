require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "html",
    "cssls",
    "pyright",
    "bashls",
    "jsonls",
    "sqlls",
    "yamlls",
    "rust-analyzer"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup { capabilities = capabilities, }
require("lspconfig").html.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").yamlls.setup {}
require("lspconfig").rust-analyzer.setup {}
