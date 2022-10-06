local configs_path = 'plugins.setup.feline-configs.'

return {
    default=require(configs_path .. 'default'),
    lsp_aware=require(configs_path .. 'lsp-aware')
}
