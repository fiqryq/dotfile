-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.game.leetcode-nvim" },
  -- import/override with your plugins folder
}
