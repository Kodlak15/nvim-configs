{
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
    ./autoCmd.nix
    ./colorschemes.nix
  ];

  # enable = true;
  globals = {
    mapleader = " ";
  };
  filetype = {
    extension = {
      templ = "templ";
    };
  };
  viAlias = true;
  vimAlias = true;
  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
}
