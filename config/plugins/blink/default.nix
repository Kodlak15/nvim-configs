{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      completion = {
        accept = {
          auto_brackets = {
            enabled = true;
            semantic_token_resolution.enabled = false;
          };
        };
        documentation.auto_show = true;
      };
      keymap = {
        preset = "enter";
      };
      signature.enabled = true;
    };
  };
}
