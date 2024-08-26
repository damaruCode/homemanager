-- remaps.lua

-- <leader>
vim.g.mapleader = " "

-- open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- sort 
vim.keymap.set("n", "<leader>s", "<cmd>sort n<CR>")

-- rust
vim.keymap.set("n", "<leader>cr", "<cmd>! cargo run -q --release<CR>")

-- vimtex 
vim.keymap.set("n", "<leader>vc", "<cmd>VimtexCompile<CR>")

-- move lines up and down in "v" mode
vim.keymap.set("v", "E", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "I", ":m '<-2<CR>gv=gv")

-- center cursor while moving half pages up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- replace all occurrances
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
