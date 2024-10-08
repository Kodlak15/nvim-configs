{
  plugins.render-markdown = {
    enable = true;
    settings = {
      file_types = ["markdown" "Avante"];
      bullet = {
        icons = [
          "◆ "
          "• "
          "• "
        ];
        right_pad = 1;
      };
      code = {
        # above = " ";
        # below = " ";
        # border = "thick";
        # language_pad = 2;
        # left_pad = 2;
        # position = "right";
        # right_pad = 2;
        # sign = false;
        # width = "block";
        # highlight = "treesitter"; # Use treesitter for syntax highlighting
        enabled = true;
        sign = true;
        style = "full";
        position = "left";
        language_pad = 0;
        disable_background = ["diff"];
        width = "full";
        left_margin = 0;
        left_pad = 0;
        right_pad = 0;
        min_width = 0;
        border = "thin";
        above = "▄";
        below = "▀";
        highlight = "RenderMarkdownCode";
        highlight_inline = "RenderMarkdownCodeInline";
      };
      heading = {
        border = true;
        icons = [
          "1 "
          "2 "
          "3 "
          "4 "
          "5 "
          "6 "
        ];
        position = "inline";
        sign = false;
        width = "full";
      };
      render_modes = true;
      signs = {
        enabled = false;
      };
    };
  };
}
