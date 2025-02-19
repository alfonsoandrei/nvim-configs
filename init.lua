-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").typos_lsp.setup({
  -- Logging level of the language server. Logs appear in :LspLog. Defaults to error.
  cmd_env = { RUST_LOG = "error" },
  init_options = {
    -- Custom config. Used together with a config file found in the workspace or its parents,
    -- taking precedence for settings declared in both.
    -- Equivalent to the typos `--config` cli argument.
    config = "~/code/typos-lsp/crates/typos-lsp/tests/typos.toml",
    -- How typos are rendered in the editor, can be one of an Error, Warning, Info or Hint.
    -- Defaults to error.
    diagnosticSeverity = "Error",
  },
})

-- Enable debug logs for the LSP client. Recommended for debugging only.
vim.lsp.set_log_level("debug")
