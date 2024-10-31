{lib, config, pkgs, ...}: {
  options = {
    guiDefaults.enable = lib.mkEnableOption "enable default gui apps";
  };

  config = lib.mkIf config.guiDefaults.enable {
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages = with pkgs; [
      google-chrome
        kitty
        vscode
    ];
  };
}
