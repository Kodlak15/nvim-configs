{pkgs, ...}: {
  plugins.vimtex = {
    enable = true;
    settings = {
      vimtex_complete_enabled = true;
    };
  };
}
