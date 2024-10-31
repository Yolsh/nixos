{pkgs, lib, input, ...}: {
  imports = [
    ./gui-config/waybar/waybar.nix
    ./gui-config/hypr/hyprland.nix
    ./gui-config/wofi/wofi.nix
    ./gui-config/wlogout/wlogout.nix
    ./gui-config/kitty.nix
  ];
}
