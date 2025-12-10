{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
    ./autoCmd.nix
    ./colorschemes.nix
  ];

  globals = {
    mapleader = " ";
  };
  filetype = {
    extension = {
      templ = "templ";
      vert = "glsl";
      vs = "glsl";
      frag = "glsl";
      fs = "glsl";
    };
  };
  viAlias = true;
  vimAlias = true;
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
}
