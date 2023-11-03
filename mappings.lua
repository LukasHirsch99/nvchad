local M = {}

M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  },
}

M.abc = {
  n = {
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
    -- ["gd"] = {"gd zz", "goto definition"}
  },
}

-- M.TmuxNavigation = {
--   n = {
-- ["<C-h>"] = { "cmd TmuxNavigateLeft<CR>", "window left"},
-- ["<C-l>"] = { "cmd TmuxNavigateRight<CR>", "window right"},
-- ["<C-m>"] = { "cmd TmuxNavigateDown<CR>", "window down"},
-- ["<C-k>"] = { "cmd TmuxNavigateUp<CR>", "window up"},
--   }
-- }

return M
