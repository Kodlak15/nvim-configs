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
      enable = false;
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
    ayu = {
      enable = true;
      settings = {
        mirage = true;
        terminal = false;
        # overrides = {
        #   # Transparency
        #   Normal = {bg = "None";};
        #   NormalFloat = {bg = "none";};
        #   ColorColumn = {bg = "None";};
        #   SignColumn = {bg = "None";};
        #   Folded = {bg = "None";};
        #   FoldColumn = {bg = "None";};
        #   CursorLine = {bg = "None";};
        #   CursorColumn = {bg = "None";};
        #   VertSplit = {bg = "None";};
        # };
      };
    };
  };
}
