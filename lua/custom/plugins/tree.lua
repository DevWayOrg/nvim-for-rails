return {
  'stevearc/oil.nvim',
  config = function()
	  local oil = require('oil')
	  oil.setup {}
	  vim.keymap.set("n", "<leader>t", oil.toggle_float, { desc = "Toggle Tree" })
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
