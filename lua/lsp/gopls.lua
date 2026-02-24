return {
    cmd = {'gopls'},
    filetypes = {'go', 'templ'},
    settings = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
            unusedparams = true,
        },
    },
}
