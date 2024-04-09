-- remaps.lua

-- <leader>
vim.g.mapleader = " "

-- remap up, down, left, right to vim keys

vim.keymap.set("n", "m", "h", { noremap = true })
vim.keymap.set("n", "n", "j", { noremap = true })
vim.keymap.set("n", "e", "k", { noremap = true })
vim.keymap.set("n", "i", "l", { noremap = true })

vim.keymap.set("n", "h", "m", { noremap = true })
vim.keymap.set("n", "j", "n", { noremap = true })
vim.keymap.set("n", "k", "e", { noremap = true })
vim.keymap.set("n", "l", "i", { noremap = true })

vim.keymap.set("v", "m", "h", { noremap = true })
vim.keymap.set("v", "n", "j", { noremap = true })
vim.keymap.set("v", "e", "k", { noremap = true })
vim.keymap.set("v", "i", "l", { noremap = true })

vim.keymap.set("v", "h", "m", { noremap = true })
vim.keymap.set("v", "j", "n", { noremap = true })
vim.keymap.set("v", "k", "e", { noremap = true })
vim.keymap.set("v", "l", "i", { noremap = true })

-- open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- sort 
vim.keymap.set("n", "<leader>s", "<cmd>sort n<CR>")

-- rust
vim.keymap.set("n", "<leader>cr", "<cmd>! cargo run -q --release<CR>")

-- vimtex 
vim.keymap.set("n", "<leader>vc", "<cmd>VimtexCompile<CR>")

-- move lines up and down in "v" mode
vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

-- center cursor while moving half pages up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- replace all occurrances
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
