{lib, config, ...}: {
  imports = [
    ./gui-apps/thunar.nix
    ./gui-apps/hyprland.nix
    ./gui-apps/waybar.nix
    ./gui-apps/wofi.nix
    ./gui-apps/wlogout.nix
    ./gui-apps/greetd.nix
    ./gui-apps/defaults.nix
  ];

  options = {
    gui.enable = lib.mkEnableOption "enable the default gui setup";
  };

  config = {
    thunar.enable = lib.mkDefault config.gui.enable;
    hypreco.enable = lib.mkDefault config.gui.enable;
    waybar.enable = lib.mkDefault config.gui.enable;
    wofi.enable = lib.mkDefault config.gui.enable;
    wlogout.enable = lib.mkDefault config.gui.enable;
    greetd.enable = lib.mkDefault config.gui.enable;
    guiDefaults.enable = lib.mkDefault config.gui.enable;
  };
}
