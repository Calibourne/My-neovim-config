local M = {
}
function M.cmd(...) vim.cmd(...) end -- to execute Vim commands e.g. cmd('pwd')
M["fn"] = vim.fn -- to call Vim functions e.g. fn.bufnr()
M["g"] = vim.g -- a table to access global variables
M["opt"] = vim.opt -- to set options
M["o"] = vim.o -- more options?

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
