local M = {}

-- Smart split behaviour
M.tree_split = function()
    vim.api.nvim_create_autocmd('FileType', {
        callback = function()
            if vim.fn.winnr('$') == 1 then
                vim.g.netrw_browse_split = 0
            else
                vim.g.netrw_browse_split = 4
            end
        end
    })
end

-- Toggle netrw in vertical split
M.toggle_tree = function()
    function ToggleNetrw()
        local netrw_win = nil

        for _, win in ipairs(vim.api.nvim_list_wins()) do
            local buf = vim.api.nvim_win_get_buf(win)
            local ft = vim.bo[buf].filetype
            if ft == 'netrw' then
                netrw_win = win
                break
            end
        end

        if netrw_win then
            if vim.fn.winnr('$') > 1 then
                vim.api.nvim_win_close(netrw_win, true)
            end
        else
            vim.cmd('Vexplore')
        end
    end

    -- Keymaps
    vim.keymap.set('n', '-', ':Ex<CR>')
    vim.keymap.set('n', '<leader>b', ToggleNetrw, { noremap = true, silent = true })
end

-- Standard settings
M.settings = function()
    vim.g.netrw_banner = 0
    vim.g.netrw_liststyle = 0
    vim.g.netrw_altv = 1
    vim.g.netrw_winsize = 35
end

return M
