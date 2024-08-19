require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
        "lua_ls",
        "bashls",
        "gopls",
        "yamlls",
        "jsonls"
    }
})

-- @TODO: Setup golang, yaml, json, make and maybe more lsps?
