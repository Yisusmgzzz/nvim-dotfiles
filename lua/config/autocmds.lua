-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.lua",
  callback = function(args)
    local root = vim.fs.find(function(name)
      return name:match("%.project%.json$")
    end, { upward = true, path = args.file })[1]

    if root then
      vim.bo[args.buf].filetype = "luau"
    end
  end,
})
