{
  plugins = {
    treesitter = {
      enable = true;
      # grammarPackages defaults to all grammars; keep that behavior.
      highlight.enable = true;
      indent.enable = true;
      folding.enable = false;
    };

    treesitter-context = {
      enable = false;
      settings = {
        mode = "cursor";
        maxLines = 3;
      };
    };

    treesitter-refactor = {
      # NOTE: tied to the legacy (master) branch of nvim-treesitter, which is
      # being removed in nixvim 26.11. Re-enabling it pulls the deprecated
      # nvim-treesitter-legacy package and conflicts with the new module.
      enable = false;
    };

    ts-autotag = {
      enable = true;
    };
  };
}
