{pkgs, lib, config, inputs, ...}: {
  options = {
    hypreco.enable = lib.mkEnableOption "enable hyprland, hyprpaper, hyprlock and hypridle";
  };

  config = lib.mkIf config.hypreco.enable {
    programs = {
      hyprland = {
        enable = true;
        xwayland.enable = false;
      };
      hyprlock.enable = true;
    };

    environment = {
      systemPackages = [
        pkgs.hyprpaper
        pkgs.lxqt.lxqt-policykit
      ];
      variables.NIXOS_OZONE_WL = "1";
    };
  };
}
