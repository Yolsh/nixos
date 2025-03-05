{ config, pkgs, inputs, ... }: {
    imports = [
        inputs.home-manager.nixosModules.default
    ];
    
    #declare initial version
    system.stateVersion = "25.05";

    ##bootloader
    boot.loader.systemd-boot.enable = true;
    boot.blacklistedKernelModules = [ "elan_i2c" ];

    #enable the default gui
    gui.enable = true;
    cli.enable = true;

    #use experimental flakes
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    #setup base stuff
    time.timeZone = "Europe/London";
    i18n.defaultLocale = "en_GB.UTF8";
    networking = {
        hostName = "YolshComputer";
        networkmanager.enable = true;
        firewall.enable = true;
    };

    #create user
    users.users.Yolsh = {
        isNormalUser = true;
        home = "/home/yolsh";
        initialPassword = "nixos";
	
        extraGroups = [
            "wheel"
            "networkmanager"
        ];
    };

    home-manager = {
      useGlobalPkgs = true;
      extraSpecialArgs = { inherit inputs; };
      users."Yolsh" = {
        imports = [
          ./home.nix
        ];
      };
    };
    
    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];

    #Some of the hardware services needed
    hardware = {
      bluetooth = {
        enable = true;
        powerOnBoot = true;
      };
    };

    services = {
      pipewire = {
        enable = true;
        audio.enable = true;
      };
      blueman.enable = true;
    };
}
