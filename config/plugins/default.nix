{pkgs, ...}: {
  imports = [
    ./lsp
    ./cmp
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
  ];

  plugins = {
    nix.enable = true;
    luasnip = {
      enable = true;
      # Below syntax in quotes represents the path to friendly-snippets in the nix store
      fromVscode = [{paths = "${pkgs.vimPlugins.friendly-snippets}";}];
    };
    lsp-format = {
      enable = true;
      lspServersToEnable = "all";
    };
    cmp-nvim-lua.enable = true;
    cmp-npm.enable = true;
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
    notify = {
      enable = true;
      backgroundColour = "#000000";
    };
  };
}
