local map = vim.keymap.set
local unmap = vim.keymap.del

unmap("n", "<S-h>")
unmap("n", "<S-l>")

--- Terminal ---
map("t", "<C-x>", "<C-\\><C-N>", { desc = "Escape Terminal Mode" })
