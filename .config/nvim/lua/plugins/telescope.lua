return {
  'nvim-telescope/telescope.nvim',
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    },
    {
      "<leader>sx",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume Telescope",
    },
  },
}
