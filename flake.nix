{
  description = "My Nix based Neovim configuration";

  inputs = {
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
    nixvim,
    flake-utils,
    ...
  }: let
    supportedSystems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    forEachSupportedSystem = f:
      nixpkgs.lib.genAttrs supportedSystems (system:
        f {
          pkgs = import nixpkgs {inherit system;};
          nixvim' = nixvim.legacyPackages.${system};
        });

    config = import ./config;
  in {
    packages = forEachSupportedSystem ({
      pkgs,
      nixvim',
    }: {
      default = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          inherit self;
        };
      };
    });
  };

  # flake-utils.lib.eachDefaultSystem (system: let
  #   pkgs = import nixpkgs {inherit system;};
  #   nixvim' = nixvim.legacyPackages.${system};
  #   nvim = nixvim'.makeNixvimWithModule {
  #     inherit pkgs;
  #     module = config;
  #     extraSpecialArgs = {
  #       inherit self;
  #     };
  #   };
  # in {
  #   packages = {
  #     default = nvim;
  #   };
  #
  #   formatter = pkgs.alejandra;
  # });
}
