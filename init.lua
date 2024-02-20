local old_stdpath = vim.fn.stdpath
vim.fn.stdpath = function(value)
    if value == "data" then
        return vim.fn.expand("~/AppData/Local/nvim-vscode-data")
    end
    return old_stdpath(value)
end

vim.opt.packpath:remove(old_stdpath("data") .. "/site")
vim.opt.packpath:append(vim.fn.expand("~/AppData/Local/nvim-vscode-data/site"))

vim.opt.runtimepath:append(vim.fn.expand("~/.config/nvim"))
vim.opt.runtimepath:remove(vim.fn.expand("~/AppData/Local/nvim"))
vim.opt.runtimepath:remove(vim.fn.expand("~/AppData/Local/nvim-data"))

require("plugins")
require("mappings")
require("options")
