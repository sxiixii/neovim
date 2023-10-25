return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      -- only needed if you want to use the commands with "_with_window_picker" suffix
      "s1n7ax/nvim-window-picker",
      config = function()
        require("window-picker").setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { "neo-tree", "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { "terminal", "quickfix" },
            },
          },
          other_win_hl_color = "#e35e4f",
        })
      end,
    },
  },
  config = function()
    -- If you want icons for diagnostic errors, you'll need to define them somewhere:
    vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

    require("window-picker").setup({
      autoselect_one = false,
      include_current = false,
      filter_rules = {
        bo = {
          filetype = { "neo-tree", "neo-tree-popup", "notify" },
          buftype = { "terminal", "quickfix" },
        },
      },
      other_win_hl_color = "#e35e4f",
    })
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            ".DS_Store",
            "thumbs.db",
            ".git",
            ".idea",
            "__pycache__",
          },
        },
      },
      window = {
        position = "left",
        width = 45,
      },
    })
  end,
}
