---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "ash",
    icons = {
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },

    highlights = {

      init = function()
        local get_hlgroup = require("astroui").get_hlgroup
        local bg = get_hlgroup("Normal").bg
        local bg_alt = get_hlgroup("Visual").bg
        local green = get_hlgroup("String").fg
        local red = get_hlgroup("Error").fg

        return {
          SnacksPickerBorder = { fg = bg_alt, bg = bg },
          SnacksPicker = { bg = bg },
          SnacksPickerPreviewBorder = { fg = bg, bg = bg },
          SnacksPickerPreview = { bg = bg },
          SnacksPickerPreviewTitle = { fg = bg, bg = green },
          SnacksPickerBoxBorder = { fg = bg, bg = bg },
          SnacksPickerInputBorder = { fg = bg, bg = bg },
          SnacksPickerInputSearch = { fg = red, bg = bg },
          SnacksPickerListBorder = { fg = bg, bg = bg },
          SnacksPickerList = { bg = bg },
          SnacksPickerListTitle = { fg = bg, bg = bg },
        }
      end,
    },
  },
}
