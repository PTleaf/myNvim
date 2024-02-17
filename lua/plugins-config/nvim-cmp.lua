local status, cmp = pcall(require, "cmp")
if not status then
    vim.notify("找不到 cmp")
    return
end

cmp.setup({
 sources = cmp.config.sources({
  { name = "nvim_lsp" },
 }, {
  { name = "path" },
 }),
})
