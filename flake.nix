{
    description = "My Nix based Neovim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/x86_64-linux";
    nixvim.url = "github:nix-community/nixvim";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.systems.follows = "systems";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    nixvim,
    flake-utils,
    ...
  }: let
    config = import ./config;
  in
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          pkgs-stable = import nixpkgs-stable {inherit system;};
          inherit self;
        };
      };
    in {
      packages = {
        default = nvim;
      };

      formatter = pkgs.alejandra;
    });
}
