{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";
        highlight = {
          additional_vim_regex_highlighting = true;
          enable = true;
        };
        indent.enable = true;
      };
    };

    treesitter-context = {
      enable = false;
      settings = {
        mode = "cursor";
        maxLines = 3;
      };
    };

    treesitter-refactor = {
      enable = true;
    };

    ts-autotag = {
      enable = true;
    };
  };
}
