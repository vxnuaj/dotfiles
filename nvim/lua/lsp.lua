local lspconfig = require("lspconfig")

-- Connect pyright with COQ
lspconfig.pyright.setup({
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
})

