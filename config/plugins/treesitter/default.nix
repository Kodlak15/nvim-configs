{
  imports = [
  ];

  plugins = {
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";
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
