return {
  {
    "drewxs/ash.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("ash").setup {
        compile_path = vim.fn.stdpath "cache" .. "/ash", -- Default compile path
        transparent = false, -- Disable transparent background
        term_colors = false, -- Disable terminal colors
        no_italic = false, -- Enable italics
        no_bold = false, -- Enable bold
        no_underline = false, -- Enable underlines

        -- Override highlight groups
        highlights = function()
          return {
            Comment = { fg = "#6C7086", italic = true }, -- Comments
            String = { fg = "#28A948" }, -- Strings
            Keyword = { fg = "#F32882", bold = true }, -- Keywords
            Identifier = { fg = "#006BFF" }, -- Variables
            Function = { fg = "#29A4FD", bold = true }, -- Functions
            Number = { fg = "#FFAF00" }, -- Numbers
            Type = { fg = "#29A4FD" }, -- Types
            Operator = { fg = "#A000F8" }, -- Operators
            Delimiter = { fg = "#A000F8" }, -- Punctuation
            Constant = { fg = "#FFAF00" }, -- Constants
            Visual = { bg = "#313244" }, -- Visual selection background
            ErrorMsg = { fg = "#F32882" }, -- Error messages
          }
        end,

        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          loops = {},
          functions = {
            "bold",
          }, -- Default style for functions
          keywords = {}, -- Default style for keywords
          strings = {}, -- Default style for strings
          variables = {}, -- Default style for variables
          numbers = {}, -- Default style for numbers
          booleans = {}, -- Default style for booleans
          properties = {}, -- Default style for properties
          types = {}, -- Default style for types
          operators = {}, -- Default style for operators
        },
      }
    end,
  },
}
