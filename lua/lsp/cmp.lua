local status, cmp = pcall(require, "cmp");
if not status then
    vim.notify("找不到cmp")
    return
end

cmp.setup({
    snippet = {
        expand = function(args)
        -- For `vsnip` users.
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" }
    }, {
        { name = "path" },
    }),
    mapping = require("keymapping").cmp(cmp)
})
