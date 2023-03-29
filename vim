diff --git a/lua/rusith/packer.lua b/lua/rusith/packer.lua
index abd9dc1..f1e48b7 100644
--- a/lua/rusith/packer.lua
+++ b/lua/rusith/packer.lua
@@ -15,4 +15,30 @@ return require('packer').startup(function(use)
   use('theprimeagen/harpoon')
   use('mbbill/undotree')
   use("tpope/vim-fugitive")
+  use("nvim-treesitter/nvim-treesitter-context");
+
+  use {
+	  'VonHeikemen/lsp-zero.nvim',
+	  branch = 'v1.x',
+	  requires = {
+		  -- LSP Support
+		  {'neovim/nvim-lspconfig'},
+		  {'williamboman/mason.nvim'},
+		  {'williamboman/mason-lspconfig.nvim'},
+
+		  -- Autocompletion
+		  {'hrsh7th/nvim-cmp'},
+		  {'hrsh7th/cmp-buffer'},
+		  {'hrsh7th/cmp-path'},
+      {'saadparwaiz1/cmp_luasnip'},
+      {'hrsh7th/cmp-nvim-lsp'},
+		  {'hrsh7th/cmp-nvim-lua'},
+
+		  -- Snippets
+		  {'L3MON4D3/LuaSnip'},
+		  {'rafamadriz/friendly-snippets'},
+	  }
+  }
+
+  use("github/copilot.vim")
 end)
diff --git a/lua/rusith/set.lua b/lua/rusith/set.lua
index 35c7cb5..2210bbd 100644
--- a/lua/rusith/set.lua
+++ b/lua/rusith/set.lua
@@ -3,9 +3,9 @@ vim.opt.guicursor = ""
 vim.opt.nu = true
 vim.opt.relativenumber = true
 
-vim.opt.tabstop = 4
-vim.opt.softtabstop = 4
-vim.opt.shiftwidth = 4
+vim.opt.tabstop = 2
+vim.opt.softtabstop = 2
+vim.opt.shiftwidth = 2
 vim.opt.expandtab = true
 
 vim.opt.smartindent = true
diff --git a/plugin/packer_compiled.lua b/plugin/packer_compiled.lua
index bd318b3..535601c 100644
--- a/plugin/packer_compiled.lua
+++ b/plugin/packer_compiled.lua
@@ -33,7 +33,6 @@ local function save_profiles(threshold)
   local sorted_times = {}
   for chunk_name, time_taken in pairs(profile_info) do
     sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
-
   end
   table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
   local results = {}
@@ -75,16 +74,86 @@ end
 time([[try_loadstring definition]], false)
 time([[Defining packer_plugins]], true)
 _G.packer_plugins = {
+  LuaSnip = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/LuaSnip",
+    url = "https://github.com/L3MON4D3/LuaSnip"
+  },
+  ["cmp-buffer"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/cmp-buffer",
+    url = "https://github.com/hrsh7th/cmp-buffer"
+  },
+  ["cmp-nvim-lsp"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
+    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
+  },
+  ["cmp-nvim-lua"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
+    url = "https://github.com/hrsh7th/cmp-nvim-lua"
+  },
+  ["cmp-path"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/cmp-path",
+    url = "https://github.com/hrsh7th/cmp-path"
+  },
+  cmp_luasnip = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
+    url = "https://github.com/saadparwaiz1/cmp_luasnip"
+  },
+  ["copilot.vim"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/copilot.vim",
+    url = "https://github.com/github/copilot.vim"
+  },
+  ["friendly-snippets"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/friendly-snippets",
+    url = "https://github.com/rafamadriz/friendly-snippets"
+  },
   harpoon = {
     loaded = true,
     path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/harpoon",
     url = "https://github.com/theprimeagen/harpoon"
   },
+  ["lsp-zero.nvim"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
+    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
+  },
+  ["mason-lspconfig.nvim"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
+    url = "https://github.com/williamboman/mason-lspconfig.nvim"
+  },
+  ["mason.nvim"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/mason.nvim",
+    url = "https://github.com/williamboman/mason.nvim"
+  },
+  ["nvim-cmp"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/nvim-cmp",
+    url = "https://github.com/hrsh7th/nvim-cmp"
+  },
+  ["nvim-lspconfig"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
+    url = "https://github.com/neovim/nvim-lspconfig"
+  },
   ["nvim-treesitter"] = {
     loaded = true,
     path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
     url = "https://github.com/nvim-treesitter/nvim-treesitter"
   },
+  ["nvim-treesitter-context"] = {
+    loaded = true,
+    path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
+    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
+  },
   ["packer.nvim"] = {
     loaded = true,
     path = "/Users/shanaka/.local/share/nvim/site/pack/packer/start/packer.nvim",
