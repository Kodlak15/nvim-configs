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
        enabled = true;
        sign = false;
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
        syntax_highlighting = true;
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
        enabled = true;
        icons = {
          bullet = "•";
          quote = "▌";
          codeblock = "▌";
        };
      };
    };
  };
}
