local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
end

local plugins = {
    {'wbthomason/packer.nvim'}, {
        "ur4ltz/surround.nvim",
        event = "BufRead",
        config = function()
            require("surround").setup {mappings_style = "surround"}
        end
    }, {
        "phaazon/hop.nvim",
        branch = "v1", -- optional but strongly recommended
        event = "BufRead", -- I want to use it all the time
        config = function() require("hop").setup() end
    }

}

-- configure plugins
require('packer').startup(function(use)
    for _, plugin in pairs(plugins) do use(plugin) end

    -- Put this at the end after all plugins
    if packer_bootstrap then require('packer').sync() end
end)
