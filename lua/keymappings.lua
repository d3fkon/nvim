vim.api.nvim_set_keymap('n', '-', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ft', ':FloatermToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>v', ':e $MYVIMRC<CR>', {noremap = true}) -- Edit VimRC or Lua or whatever
vim.api.nvim_set_keymap('n', '<leader>sv', ':luafile C:\\Users\\d3fko\\AppData\\Local\\nvim\\init.lua<CR>', {noremap = true}) -- Reload the config
vim.api.nvim_set_keymap('n', '<leader>y', '"*y', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>p', '"*p', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>Y', '"*Y', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>P', '"*P', {noremap=true})

vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap=true}) -- Control S like a noob

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

--LSP Diagnostics Keymaps
vim.api.nvim_set_keymap('n', '<space>a', ':lua vim.lsp.buf.code_action()<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.rename()<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<space>D', ':lua vim.lsp.buf.references()<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<space>F', ':lua vim.lsp.buf.formatting()<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>F', ':FlutterRestart<CR>', {silent = true})


-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize +2<CR>
  nnoremap <silent> <C-Right> :vertical resize -2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])
