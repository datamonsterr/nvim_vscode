local map = vim.keymap.set
map("n", "<C-j>", ":call VSCodeNotify('workbench.action.navigateDown')<CR>")
map("n", "<C-k>", ":call VSCodeNotify('workbench.action.navigateUp')<CR>")
map("n", "<C-h>", ":call VSCodeNotify('workbench.action.navigateLeft')<CR>")
map("n", "<C-l>", ":call VSCodeNotify('workbench.action.navigateRight')<CR>")
map("n", "<C-w>_",
    ":<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>")
map("n", "<Space>", ":call VSCodeNotify('whichkey.show')<CR>")
map("n", "f", ":HopChar1CurrentLine<cr>")
map("n", "F", ":HopChar1<cr>")
