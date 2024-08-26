-- Map <Space> to show Which Key in normal and visual modes
vim.api.nvim_set_keymap('n', '<Space>', ":call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<Space>', ":call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })