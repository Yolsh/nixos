{ config, pkgs, inputs, ... }: {
    imports = [
        ./hardware-configuration.nix
        inputs.home-manager.nixosModules.default
    ];
    
    #declare initial version
    system.stateVersion = "24.05";

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
    
    fonts.packages = with pkgs; [(nerdfonts.override { fonts = ["JetBrainsMono"]; })];

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
