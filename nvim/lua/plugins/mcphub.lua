return {
  {
    "ravitemer/mcphub.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    build = "npm install -g mcp-hub@latest",
    config = function()
      require("mcphub").setup {
        port = 5999,
        config = vim.fn.expand "~/.config/mcpservers.json",
        on_ready = function(hub) end,
        on_error = function(err) end,
        shutdown_delay = 0,
        log = {
          level = vim.log.levels.WARN,
          to_file = false,
          file_path = nil,
          prefix = "MCPHub",
        },
      }
    end,
  },
}
