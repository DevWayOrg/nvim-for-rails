return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function ()
	      local builtin = require('telescope.builtin')
	      require('telescope').setup {}

	      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files using Telescope" })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live Grep using telescope" })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find inside a buffer" })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Use help with telescope" })
      end
    }
