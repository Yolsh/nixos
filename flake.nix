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
    in
    {
      nixosConfigurations = {
        thinkpad = nixpkgs.lib.nixosSystem {
          system = system;
          modules = [
            ./hosts/thinkpad/configuration.nix
            {
              _module.args = {inherit nixpkgs inputs;};
            }
            /etc/nixos/hardware-configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = {inherit nixpkgs inputs;};
              home-manager.users.Yolsh = import ./home.nix;
            }
          ];
        };
        hp = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [
            ./hosts/hp/configuration.nix
            /etc/nixos/hardware-configuration.nix
            home-manager.nixosModules.default
          ];
        };
      };
    };
}
