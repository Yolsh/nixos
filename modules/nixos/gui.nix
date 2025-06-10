{lib, config, ...}: {
  imports = [
    ./gui-apps/hyprland.nix
    ./gui-apps/waybar.nix
    ./gui-apps/greetd.nix
    ./gui-apps/defaults.nix
    ./gui-apps/vscode.nix
    ./gui-apps/kando.nix
  ];

  options = {
    gui.enable = lib.mkEnableOption "enable the default gui setup";
  };

  config = {
    hypreco.enable = lib.mkDefault config.gui.enable;
    waybar.enable = lib.mkDefault config.gui.enable;
    greetd.enable = lib.mkDefault config.gui.enable;
    guiDefaults.enable = lib.mkDefault config.gui.enable;
    vscode.enable = lib.mkDefault config.gui.enable;
  };
}
