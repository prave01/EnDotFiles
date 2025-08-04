local M = {}

function M.setup()
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- Switch tabs
  map("n", "<S-Tab>", ":BufferLineCycleNext<CR>", opts)
  -- Copy
  map("v", "<C-c>", '"+y')
  -- Close Tabs
  map("n", "zz", ":bdelete!<CR>")

  -- Attach Tailwind Colors
  map("n", "<C-t>", ":TailwindColorsAttach<CR>")

  -- Saving all file
  map("n", "<C-S>", ":wa<CR>")

  -- Split window
  map("n", "<leader>sh", ":split<Return><C-w>w", { desc = "splits horizontal", noremap = true })
  map("n", "<leader>sv", ":vsplit<Return><C-w>w", { desc = "Split vertical", noremap = true })
end

return M
