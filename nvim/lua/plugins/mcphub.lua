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
        config = vim.fn.expand "~/mcp/mcpservers.json",
      }
    end,
  },
}
