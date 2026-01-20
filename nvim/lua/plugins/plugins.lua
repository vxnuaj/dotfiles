--- nvim/lua/plugins/plugins.lua

-- Specify your plugins
local plugins = {
    -- color scheme
    {
        "catppuccin/nvim",
        name = "catppuccin", priority = 1000,
        opts = {
            no_italic = true,
            term_colors = true,
            transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {
                    base = "#151515",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            integrations = {
                cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
                },
            },
        },
    },
    { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
    {"EdenEast/nightfox.nvim"},
    {"nyoom-engineering/oxocarbon.nvim"},
    {
        "Mofiqul/vscode.nvim",
        config = function()
            local configs = require("vscode.colors").get_colors()
            require('vscode').setup({
                color_overrides = {
			vscBack = '#000000'
                },
            })
        end
    },
     -- treesitter
    {'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
        local configs = require("nvim-treesitter.configs")

	configs.setup({
	    ensure_installed = {"python", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
	    sync_install = false,
	    highlight = {enable = true},
	    indent = {enable = true},
    })
    end
},
  -- git
    {'tpope/vim-fugitive'},

{
  "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
  lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
  dependencies = {
    -- main one
    { "ms-jpq/coq_nvim", branch = "coq" },

    -- 9000+ Snippets
    { "ms-jpq/coq.artifacts", branch = "artifacts" },

    -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
    -- Need to **configure separately**
    { 'ms-jpq/coq.thirdparty', branch = "3p" }
    -- - shell repl
    -- - nvim lua api
    -- - scientific calculator
    -- - comment banner
    -- - etc
  },
  init = function()
    vim.g.coq_settings = {
        auto_start = true, -- if you want to start COQ at startup
        display = {
            statusline = {
                helo = false,
            },
        },
    }
  end,
  config = function()
    -- Your LSP settings here
    vim.cmd([[
      augroup MyColors
        autocmd!
        autocmd ColorScheme * highlight Pmenu guibg=#010101 guifg=#9ed9f7
      augroup END
    ]])

    -- Start COQ with --shut-up flag
    vim.cmd("COQnow --shut-up")
  end,
}
}

return plugins
