{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland,... }@inputs: 
    let 
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyInputs.${system};
    in
    {
      nixosConfigurations = {
        default = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [
            ./hosts/default/configuration.nix
            /etc/nixos/hardware-configuration.nix
            ./modules/nixos/gui.nix
            ./modules/nixos/cli.nix
            home-manager.nixosModules.default
          ];
        };
      };
    };
}
