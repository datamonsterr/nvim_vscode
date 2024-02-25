vim.opt.runtimepath:append(vim.fn.expand("~/.config/nvim"))
vim.opt.runtimepath:remove(vim.fn.expand("~/AppData/Local/nvim"))

require("plugins")
require("mappings")
require("options")
