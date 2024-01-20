vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<M-m>", ":NvimTreeToggle<CR>", opt)



-- bufferline
-- ctrl + h 切换左侧标签页
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
-- ctrl+l 切换右侧标签页
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- ctrl+w 关闭  
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)


-- window
map("n", "<M-h>", "<C-w>h", opt)
map("n", "<M-j>", "<C-w>j", opt)
map("n", "<M-k>", "<C-w>k", opt)
map("n", "<M-l>", "<C-w>l", opt)


-- telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt);
map("n", "<C-f>", ":Telescope live_grep<CR>", opt);
