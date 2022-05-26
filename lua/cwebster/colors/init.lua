local M = {}
local vim = vim

local _, colors = require("catppuccino.api.colors").get_colors()

function M.get_colors()
  return colors
  -- return vim.tbl_deep_extend("force", colors, {
  --   diff = {
  --     add = colors.green,
  --     delete = colors.red,
  --     change = "#2B5B77",
  --   },
  --   none = "NONE"
  -- })
end

M.theme_colors = colors

M.mode_color = {
  --n = 'DarkGoldenrod2',
  n = colors.green,
  i = colors.blue,
  v = 'gray',
  [""] = 'gray',
  V = 'gray',
  c = 'plum3',
  no = 'DarkGoldenrod2',
  s = 'SkyBlue2',
  S = 'SkyBlue2',
  [""] = 'SkyBlue2',
  ic = 'chartreuse3',
  R = 'purple',
  Rv = 'purple',
  cv = 'plum3',
  ce = 'plum3',
  r = 'chocolate',
  rm = 'chocolate',
  ["r?"] = 'chocolate',
  ["!"] = 'plum3',
  t = 'plum3'
}

M.setup = function()
  vim.api.nvim_command [[syntax on]]
  if vim.fn.has('termguicolors') == 1 then
    vim.cmd[[set termguicolors]]
  end
  -- require("cwebster.colors.catppuccin").setup()
  -- vim.g.catppuccin_flavor = "frappe"
  -- vim.cmd[[colorscheme catppuccin]]
  require("catppuccino").load()
end

return M

