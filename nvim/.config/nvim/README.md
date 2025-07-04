![CleanShot 2025-07-04 at 22 40 44](https://github.com/user-attachments/assets/b5253609-a289-4f9b-a215-a0d9a09d9f87)

## Theme ash

```lua
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
```

# AI Integration

for ai integration i use avante + copilot + mcp hub this is powerfull for daily coding task.

```lua
return {
  "yetone/avante.nvim",
  build = function()
    if vim.fn.has "win32" == 1 then
      return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    else
      return "make"
    end
  end,
  event = "VeryLazy",
  version = false,
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    provider = "copilot",
    ui = {
      height = 600,
    },
    providers = {
      copilot = {
        model = "claude-3.5-sonnet",
        timeout = 30000,
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 20480,
        },
      },
    },
  },
  system_prompt = function()
    local hub = require("mcphub").get_hub_instance()
    return hub and hub:get_active_servers_prompt() or ""
  end,
  custom_tools = function()
    return {
      require("mcphub.extensions.avante").mcp_tool(),
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "echasnovski/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "stevearc/dressing.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
```
