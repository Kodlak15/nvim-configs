{
  imports = [
  ];

  plugins.indent-blankline = {
    enable = true;
    settings = {
      scope = {
        enabled = true;
        show_end = false;
        show_exact_scope = true;
        show_start = false;
        include.node_type = {
          "*" = ["*"];
        };
      };
      indent = {
        char = "│";
        tab_char = "│";
      };
      exclude = {
        buftypes = [
          "terminal"
          "nofile"
          "quickfix"
          "prompt"
        ];
        filetypes = [
          "alpha"
          "dashboard"
          "neo-tree"
          "Trouble"
          "trouble"
          "notify"
          "toggleterm"
          "lspinfo"
          "packer"
          "checkhealth"
          "help"
          "man"
          "gitcommit"
          "TelescopePrompt"
          "TelescopeResults"
          "\'\'"
        ];
      };
    };
  };
}
