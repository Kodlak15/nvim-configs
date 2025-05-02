{pkgs, ...}: {
  imports = [
    ./codecompanion
    ./lsp
    # ./cmp
    ./blink
    ./treesitter
    ./telescope
    ./neo-tree
    ./alpha
    ./lualine
    ./bufferline
    ./which-key
    ./comment
    ./indent-blankline
    ./noice
    ./notify
    ./todo-comments
    ./render-markdown
    ./windsurf
    ./mini
  ];

  plugins = {
    nix.enable = true;
    luasnip = {
      enable = true;
      # Below syntax in quotes represents the path to friendly-snippets in the nix store
      fromVscode = [{paths = "${pkgs.vimPlugins.friendly-snippets}";}];
    };
    web-devicons.enable = true;
    nvim-autopairs.enable = true;
  };
}
