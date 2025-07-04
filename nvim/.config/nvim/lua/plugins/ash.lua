return {
  {
    "drewxs/ash.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("ash").setup {
        compile_path = vim.fn.stdpath "cache" .. "/ash",
        transparent = false,
        term_colors = false,
        no_italic = false,
        no_bold = false,
        no_underline = false,

        highlights = function()
          return {
            Normal = { bg = "#0D1118", fg = "#C9D1D9" },
            NormalNC = { bg = "#0D1118" },
            NormalFloat = { bg = "#0D1118" },
            FloatBorder = { bg = "#0D1118" },
            SignColumn = { bg = "#0D1118" },
            VertSplit = { bg = "#0D1118", fg = "#30363D" },
            Folded = { bg = "#0D1118", fg = "#8B949E" },

            Comment = { fg = "#6E7480", italic = true },
            String = { fg = "#FF5C8F" },
            Keyword = { fg = "#FF5C8F", bold = true },
            Identifier = { fg = "#7F9CF5" },
            Function = { fg = "#00C8FF", bold = true },
            Number = { fg = "#FFBC3C" },
            Type = { fg = "#00C8FF" },
            Operator = { fg = "#D16FFF" },
            Delimiter = { fg = "#D16FFF" },
            Constant = { fg = "#FFBC3C" },
            Visual = { bg = "#2A2E37" },
            ErrorMsg = { fg = "#FF5C8F", bold = true },
          }
        end,

        styles = {
          comments = { "italic" },
          conditionals = { "bold", "italic" },
          loops = { "bold" },
          functions = { "bold" },
          keywords = { "bold" },
          booleans = { "bold" },
          types = { "bold" },
        },
      }
    end,
  },
}
