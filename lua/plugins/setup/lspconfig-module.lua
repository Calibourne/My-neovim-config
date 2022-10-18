local nvim_lsp = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
local on_attach =function() end
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = require 'plugins.servers'
for _, lsp in ipairs(servers) do
    local config ={
            on_attach = on_attach,
            capabilities = capabilities,
    }
    if lsp == 'sumneko_lua' then
        local lua_settings = {
            Lua = {
                diagnostics={
                    globals={'vim', 'use'}
                }
            }
        }

        config.settings = lua_settings
    end
    nvim_lsp[lsp].setup(config)
end
