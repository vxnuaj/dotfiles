local lspconfig = require("lspconfig")
local coq = require("coq") -- COQ integration

lspconfig.pyright.setup(coq.lsp_ensure_capabilities({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
}))
