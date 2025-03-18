vim.api.nvim_set_hl(0, "MyAvanteCurrentGroup", {
  fg = "#FF0000",
  bg = "#00FF00",
  bold = true,
})

return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "deepseek",
      cursor_applying_provider = "deepseek",
      behaviour = {
        enable_cursor_planning_mode = true,
      },
      highlighter = {
        diff = {
          current = "MyAvanteCurrentGroup",
        },
      },
      vendors = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
          prompts = {
            planning = "Analyze the following code and provide a detailed plan for improvement:",
            editing = "Review and optimize the following code block:",
            suggesting = "Based on the context, suggest the most appropriate code completion:",
            cursor_planning = "Analyze the code at the cursor position and suggest improvements:",
          },
          disable_tools = true,
        },
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
