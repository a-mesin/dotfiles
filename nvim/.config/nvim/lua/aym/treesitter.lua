require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
      enable = true,
      extended_mode = false,
      colors = {
          "#f1fa8c",
          "#50fa7b",
          "#bd93f9",
          "#ff79c6",
          "#ffb86c",
          "#8be9fd",
          "#ff5555"
      }
  }
}
