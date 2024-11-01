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
            ./hosts/default/hardware-configuration.nix
            ./modules/nixos/gui.nix
            ./modules/nixos/cli.nix
            home-manager.nixosModules.default
          ];
        };
        #alternate = nixpkgs.lib.nixosSystem {  #this allows mutiple setups for different machines
        #  extraSpecialArgs = {inherit inputs;};
        #  modules = [
        #    ./hosts/alternate/configuration.nix
        #    inputs.home-manager.nixosModules.default
        #  ];
        #};
      };
    };
}
