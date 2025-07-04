syn on
set mouse=
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
colorscheme desert


call plug#begin()

"Plug 'neovim/nvim-lsp'
"Plug 'ervandew/supertab'
"Plug 'github/copilot.vim'
Plug 'Exafunction/codeium.vim'
Plug 'dense-analysis/ale'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.5'}
Plug 'rust-lang/rust.vim'
Plug 'neomake/neomake'

Plug 'neovim/nvim-lspconfig'
Plug 'ziglang/zig.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'davidhalter/jedi-vim'
"Plug 'EdenEast/nightfox.nvim'
"Plug 'neovim/nvim-lspconfig'
"Plug 'simrat39/rust-tools.nvim'
"Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }
"Plug 'ziglang/zig.vim'
"Plug 'thecodinglab/nvim-vlang'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

let g:codeium_enabled = 0
command! AI CodeiumToggle

"colorscheme default



" Configuración para hacer la selección más visible en Telescope
if exists('g:colors_name')
  highlight link TelescopeSelection Visual
endif


" Define los colores para los bordes
highlight TelescopeBorder guifg=#5E81AC

" Define el color del prompt de búsqueda
highlight TelescopePromptBorder guifg=#5E81AC

" Define el color del resultado seleccionado
highlight TelescopeSelection guifg=#FFFFFF gui=bold guibg=#4F4F4F
"highlight TelescopeSelection guifg=#ECEFF4 gui=bold guibg=#5E81AC

" Define el color de fondo del resultado seleccionado
highlight TelescopeSelectionCaret guifg=#ECEFF4 guibg=#5E81AC

" Define el color de fondo del resumen de resultados
highlight TelescopeResultsNormal guifg=#ECEFF4 guibg=#2E3440

" Define el color del texto en el resumen de resultados
highlight TelescopeNormal guifg=#D8DEE9

" Define el color del resumen de resultados seleccionado
highlight TelescopeMatching guifg=#81A1C1 gui=bold


"autocmd BufWritePost *.py if !v:cmdbang && getcmdtype() == '' | execute '!python3 %' | endif  
"autocmd BufWritePost *.c if !v:cmdbang && getcmdtype() == '' | execute '!make' | endif  
"autocmd BufWritePost *.cpp if !v:cmdbang && getcmdtype() == '' | execute '!make' | endif  
"autocmd BufWritePost *.zig if !v:cmdbang && getcmdtype() == '' | execute '!zig test %' | endif  

cnoreabbrev zig !zig run %

" comentar bloque
"vnoremap c :norm I//<CR>
"vnoremap v :'<,'>s/\/\///<CR>

autocmd FileType zig lua vim.lsp.start({name='zls', cmd={'zls'}, root_dir=vim.fn.getcwd()})

lua <<EOF
EOF



"nnoremap <C-Space> <C-]>
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
