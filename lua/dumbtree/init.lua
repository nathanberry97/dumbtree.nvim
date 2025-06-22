local dumbtree = require 'dumbtree.tree'
local M = {}

M.setup = function()
    -- Check if the plugin was loaded, disabled or compatible is set
    if vim.g.loaded_dumbtree_nvim or vim.o.compatible then return end

    vim.g.loaded_dumbtree_nvim = 1

    -- Tree configuration
    dumbtree.toggle_tree()
    dumbtree.tree_split()
    dumbtree.settings()
end

return M
