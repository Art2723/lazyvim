return {
  "mrcjkb/haskell-tools.nvim",
  version = "^3", -- Recommended
  ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
    -- add a keymap
    keys[#keys + 1] = {
      "<leader>ha",

      function()
        require("haskell-tools").lsp.buf_eval_all(opts)
      end,
    }
  end,
  -- keys = {
  --   {
  --     "<leader>ha",
  --     function()
  --       require("haskell-tools").lsp.buf_eval_all(opts)
  --     end,
  --   },
  -- },
}
