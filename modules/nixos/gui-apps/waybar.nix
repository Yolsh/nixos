{pkgs, lib, config, ... }: {
  options = {
    waybar.enable = lib.mkEnableOption "enable waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar.enable = true;
  };
}
