{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland, zen-browser, ... }@inputs: 
    let 
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyInputs.${system};
    in
    {
      nixosConfigurations = {
        thinkpad = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [
            ./hosts/thinkpad/configuration.nix
            /etc/nixos/hardware-configuration.nix
            ./modules/nixos/gui.nix
            ./modules/nixos/cli.nix
            ./modules/nixos/dev.nix
            home-manager.nixosModules.default
          ];
        };
        hp = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [
            ./hosts/hp/configuration.nix
            /etc/nixos/hardware-configuration.nix
            ./modules/nixos/gui.nix
            ./modules/nixos/cli.nix
            home-manager.nixosModules.default
          ];
        };
      };
    };
}
