{pkgs, lib, config, ...}: {
  options = {
    wlogout.enable = lib.mkEnableOption "enable the wlogout screen";
  };

  config = lib.mkIf config.wlogout.enable {
    environment.systemPackages = [
      pkgs.wlogout
    ];
  };
}
