{
  colorschemes = {
    catppuccin = {
      enable = false;
      settings = {
        flavour = "mocha";
      };
    };
    rose-pine = {
      enable = false;
      settings = {
        styles = {
          transparency = true;
        };
        dark_variant = "main";
      };
    };
    tokyonight = {
      enable = false;
      settings = {
        style = "night";
      };
    };
    cyberdream = {
      enable = true;
      settings = {
        borderless_telescope = true;
        hide_fillchars = true;
        italic_comments = true;
        terminal_colors = true;
        theme = {
          colors = {
            bg = "#000000";
            green = "#00ff00";
            magenta = "#ff00ff";
          };
          highlights = {
            Comment = {
              bg = "NONE";
              fg = "#696969";
              italic = true;
            };
          };
        };
        transparent = true;
      };
    };
  };
}
