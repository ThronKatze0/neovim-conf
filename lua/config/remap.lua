-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Telescope buffers" })

-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-h>", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-t>", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-n>", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-s>", function()
	harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)

-- Format
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end)

-- Rest
-- vim.keymap.set("n", "<leader>rr", ":Rest run<CR>");
-- vim.keymap.set("n", "<leader>ro", ":Rest open<CR>");
-- vim.keymap.set("n", "<leader>rl", ":Rest last<CR>");
vim.keymap.set("n", "<leader>rr", function() require("kulala").run() end)
vim.keymap.set("n", "<leader>ra", function() require("kulala").run_all() end)
vim.keymap.set("n", "<leader>rl", function() require("kulala").replay() end)
