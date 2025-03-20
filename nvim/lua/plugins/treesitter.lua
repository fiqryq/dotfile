if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "typescript",
      "javascript",
      "json",
      "html",
      "css",
      "scss",
      "yaml",
      "jsonc",
      "tsx",
      "graphql",
      "bash",
      "python",
      "rust",
      "go",
      "java",
      "c",
      "cpp",
      "php",
    },
  },
}
