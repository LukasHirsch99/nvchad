---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin', transparency = true }
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

-- require "base46".toggle_theme()

return M
