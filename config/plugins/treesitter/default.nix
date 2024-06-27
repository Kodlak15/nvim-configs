{
  imports = [
  ];

  plugins = {
    treesitter = {
      enable = true;
      ensureInstalled = "all";
      indent = true;
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
