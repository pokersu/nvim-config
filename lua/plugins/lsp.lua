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
    "quick_lint_js",
    "vtsls",
    "pyright",
    "bashls",
    "jsonls",
    "sqlls",
    "yamlls",
    "lemminx",
    "rust_analyzer",
    "jdtls",
    "dockerls",
    "docker_compose_language_service",
    "marksman",
    "markdownlint"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup { capabilities = capabilities, }
require("lspconfig").html.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").quick_lint_js.setup {}
require("lspconfig").vtsls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").yamlls.setup {}
require("lspconfig").lemminx.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").jdtls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
require("lspconfig").marksman.setup {}
require("lspconfig").markdownlint.setup {}
