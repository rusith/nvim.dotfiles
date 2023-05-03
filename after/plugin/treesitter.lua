require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "query", "javascript", "typescript", "rust", "toml"},
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
