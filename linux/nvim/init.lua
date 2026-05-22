-- Activar resaltado de sintaxis
vim.cmd("syntax on")

-- Configuración de tabs
vim.opt.mouse = ""
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Tema
vim.cmd("colorscheme desert")


-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



-- Plug plugins
--[[ vim.cmd [[
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.5'}
Plug 'rust-lang/rust.vim'
Plug 'neomake/neomake'
Plug 'neovim/nvim-lspconfig'
Plug 'ziglang/zig.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
]]


-- Lazy plugins
require("lazy").setup({
      "dense-analysis/ale",
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope.nvim", tag = "0.1.5" },
      "rust-lang/rust.vim",
      "neomake/neomake",
      "neovim/nvim-lspconfig",
      "ziglang/zig.vim",
      { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
        "hrsh7th/nvim-cmp",                 -- Core de completado
  "hrsh7th/cmp-nvim-lsp",             -- Integración LSP con nvim-cmp
--'Exafunction/codeium.vim',
  {
  "sha0coder/nvim-ollama",
    opts = {
        model = "qwen3-coder:30b",
        trigger = "manual",
        keybind = "<F2>",
        context = 30,
    }
  },
})

-- Mapeos de Telescope
vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', 'fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')


-- Mapeos LSP
vim.keymap.set('n', '<Space><CR>', vim.lsp.buf.definition, { silent = true })
vim.keymap.set('n', '<Space>b', '<C-o>', { silent = true })

-- Highlight de Telescope
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd [[
      highlight link TelescopeSelection Visual
      highlight TelescopeBorder guifg=#5E81AC
      highlight TelescopePromptBorder guifg=#5E81AC
      highlight TelescopeSelection guifg=#FFFFFF gui=bold guibg=#4F4F4F
      highlight TelescopeSelectionCaret guifg=#ECEFF4 guibg=#5E81AC
      highlight TelescopeResultsNormal guifg=#ECEFF4 guibg=#2E3440
      highlight TelescopeNormal guifg=#D8DEE9
      highlight TelescopeMatching guifg=#81A1C1 gui=bold
    ]]
  end
})

-- Auto start ZLS para archivos Zig
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zig",
  callback = function()
    vim.lsp.start({
      name = "zls",
      cmd = { "zls" },
      root_dir = vim.fn.getcwd(),
    })
  end
})

-- Opciones de completado
vim.opt.completeopt = { "menu", "menuone", "preview", "noselect", "noinsert" }
vim.g.ale_completion_enabled = 1

-- Mapeo ALE goto con mouse
vim.keymap.set('n', '<C-LeftMouse>', ':ALEGoToDefinition<CR>')

