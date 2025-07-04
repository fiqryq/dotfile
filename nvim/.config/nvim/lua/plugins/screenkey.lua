return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*",
  config = function()
    vim.schedule(function() require("screenkey").toggle(true) end)
  end,
}
