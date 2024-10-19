return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
        vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", {desc = "Toggle [E]xplorer"})
        require("nvim-tree").setup({
            hijack_netrw = true,
            auto_reload_on_write = true,
        })
        vim.cmd([[
      highlight NvimTreeNormal guibg=NONE ctermbg=NONE
      highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
    ]])
    end
}
