local old_stdpath = vim.fn.stdpath
vim.fn.stdpath = function(value)
    if value == "data" then
        return vim.fn.expand("~/.local/share/nvim")
    end
    return old_stdpath(value)
end

vim.opt.packpath:remove(old_stdpath("data") .. "/site")
vim.opt.packpath:append(vim.fn.expand("~/.local/share/nvim/site"))

vim.opt.runtimepath:append("~/.config/nvim")
require("plugins")
require("mappings")
require("options")
