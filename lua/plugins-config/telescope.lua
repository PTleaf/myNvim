local status, telescope = pcall(require, "telescope");
if not status then
    vim.notify("没有找到 telescope")
    return
end

local telescopeConfig = require("telescope.config")
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
table.insert(vimgrep_arguments, "-L")


telescope.load_extension("live_grep_args");

telescope.setup({
    defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    vimgrep_arguments = vimgrep_arguments
    -- 窗口内快捷键
    -- mappings = require("keybindings").telescopeList,
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      -- theme = "dropdown", 
      follow=true
    },
  },
  extensions = {
    live_grep_args = {
        find_files = {
            follow = true
        }
    }
  },
})
