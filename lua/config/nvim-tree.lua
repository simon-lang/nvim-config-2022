require('nvim-tree').setup({
  sync_root_with_cwd = true,
  view = {
    width = 40
  },
  renderer = {
    icons = {
      show =  {
        -- folder = false,
        -- folder_arrow = false,
        -- file = false
      }
    }
  }
})
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>s', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<S-Esc>', ':NvimTreeToggle<CR>')

