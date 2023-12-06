-- Keymaps are automatically loaded on the VeryLazy event
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
vim.keymap.set("n", "<C-\\>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- vim.keymap.del("n", "<leader>/")
vim.keymap.set("n", "<leader>/", "gcc", { desc = "Comment line", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "Comment line", remap = true })
vim.keymap.set("i", "<A-l>", "<Right>", { remap = true })
vim.keymap.set("i", "<A-h>", "<Left>", { remap = true })
vim.keymap.set("i", "<A-a>", "<C-o>A", { remap = true })
vim.keymap.set("v", "(", "c(<Esc>pa)<Esc>", { remap = true })
vim.keymap.set("v", ")", "c(<Esc>pa)<Esc>", { remap = true })
vim.keymap.set("v", "[", "c[<Esc>pa]<Esc>", { remap = true })
vim.keymap.set("v", "]", "c[<Esc>pa]<Esc>", { remap = true })
vim.keymap.set("v", "{", "c{<Esc>pa}<Esc>", { remap = true })
vim.keymap.set("v", "}", "c{<Esc>pa}<Esc>", { remap = true })
vim.keymap.set("v", "'", "c'<Esc>pa'<Esc>", { remap = true })
vim.keymap.set("v", '"', 'c"<Esc>pa"<Esc>', { remap = true })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

vim.keymap.set("n", "<leader>cc", vim.lsp.codelens.run, opts)
