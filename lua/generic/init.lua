require("todo-comments").setup{}
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

vim.cmd('let g:minimap_width = 10')
vim.cmd('let g:minimap_auto_start = 1')
vim.cmd('let g:minimap_auto_start_win_enter = 1')

if vim.eval"exists('g:fvim_loaded')" then
  vim.cmd('nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>')
  vim.cmd('nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>')
end

