{inputs, lib, config, pkgs, ...}: {
  options = {
    guiDefaults.enable = lib.mkEnableOption "enable default gui apps";
  };

  config = lib.mkIf config.guiDefaults.enable {
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [
      vscode
      networkmanagerapplet
      ghostty
      pavucontrol
      grimblast
      wl-clipboard
      mission-center
      inputs.zen-browser.packages."${system}".default
      keyd
      ulauncher
    ];
    
    services.keyd.enable = true;
    environment.etc."keyd/default.conf".source = ./keyd.conf;
    environment.etc."libinput/local-overrides.quirks".text = ''
    [keyd]
    MatchUdevType=keyboard
    MatchVendor=0xFAC
    AttrKeyboardIntegration=internal
  '';
  };
}
