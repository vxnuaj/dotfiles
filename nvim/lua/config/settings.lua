-- https://vxnuaj.com
-- my nvim settings.
-- line nums

vim.opt.number = true 

-- set tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFF00", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFD700", bold = true, bg = "NONE" })
  end,
})


-- syntax highlighting + theme
vim.cmd('syntax enable')
vim.cmd('colorscheme vscode')
vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })  -- for floating windows



-- cmds
vim.api.nvim_set_keymap('n', '<Esc>', ':silent! nohls<CR>', { noremap = true, silent = true }) -- clear search highlights, using double '<esc>'

-- text editing
vim.o.clipboard = "unnamedplus"

-- other
vim.opt.wrap = false --disabling line wrap
vim.cmd("COQnow --shut-up") -- get rid of the annoying coq greeting, lol

-- window / pane switching
-- local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-e>h', '<C-w>h', opts)
vim.keymap.set('n', '<C-e>j', '<C-w>j', opts)
vim.keymap.set('n', '<C-e>k', '<C-w>k', opts)
vim.keymap.set('n', '<C-e>l', '<C-w>l', opts)

-- colors

