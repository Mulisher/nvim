local lspconfig = require('lspconfig')
local MY_FQBN = "arduino:avr:uno" --Arduino

lspconfig.arduino_language_server.setup {
    cmd = {
        "arduino-language-server",
        "-cli-config", "~/.arduino15/arduino-cli.yaml",
        "-clangd", "/usr/bin/clangd",
        '-cli', '/usr/bin/arduino-cli',
        "-fqbn", MY_FQBN
    },
    --on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.htmx.setup{}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

