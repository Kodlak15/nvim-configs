{pkgs, ...}: {
  imports = [
    # ./avante
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
    ./packer
    ./todo-comments
    ./render-markdown
    ./windsurf
  ];

  plugins = {
    nix.enable = true;
    luasnip = {
      enable = true;
      # Below syntax in quotes represents the path to friendly-snippets in the nix store
      fromVscode = [{paths = "${pkgs.vimPlugins.friendly-snippets}";}];
    };
    web-devicons.enable = true;
    mini = {
      enable = true;
      modules = {
        ai = {
          n_lines = 500;
          search_method = "cover_or_next";
          custom_objects = {};
        };
        indentscope = {
          symbol = "|";
          options.try_as_border = true;
        };
      };
    };
    nvim-autopairs.enable = true;
  };
}
