{ pkgs, ... }: {
    imports = [
        ./../../modules/nixos/gui.nix
        ./../../modules/nixos/cli.nix
        ./../../modules/nixos/dev.nix
    ];
    
    #declare initial version
    system.stateVersion = "unstable";

    gui.enable = true;
    cli.enable = true;
    dev.enable = true;

    ##bootloader
    boot.loader.systemd-boot.enable = true;
    boot.blacklistedKernelModules = [ "elan_i2c" ];

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
