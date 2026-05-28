return {
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    keys = {
      { "cp", desc = "Markdown Preview" },
    },
    config = function()
      vim.cmd([[do FileType]])
      -- Optional: customize browser
      vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
      vim.cmd([[
        function! OpenMarkdownPreview(url)
          let cmd = "google-chrome-stable --new-window " . shellescape(a:url) . " &"
          silent call system(cmd)
        endfunction
      ]])
    end,
  },
}
