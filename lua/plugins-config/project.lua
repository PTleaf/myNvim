local status, project = pcall(require, 'project_nvim')
if not status then
    vim.notify('没有找到project')
    return
end

vim.g.nvim_tree_respect_buf_cwd = 1


project.setup({
    manual_mode = true
})

local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 telescope")
  return
 end
pcall(telescope.load_extension, "projects")
