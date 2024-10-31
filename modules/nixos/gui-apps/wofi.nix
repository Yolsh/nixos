{pkgs, lib, config, ... }: {
  options = {
    wofi.enable = lib.mkEnableOption "enable rofi app launcher";
  };

  config = lib.mkIf config.wofi.enable {
    environment.systemPackages = [
      pkgs.wofi
    ];
  };
}
