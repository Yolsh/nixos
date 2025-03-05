{pkgs, lib, input, ...}: {
  imports = [
    ./gui-config/waybar/waybar.nix
    ./gui-config/hypr/hyprland.nix
    ./gui-config/ghostty.nix
    ./gui-config/gtk.nix
    ./gui-config/swaync/swaync.nix
    ./gui-config/ulauncher.nix
  ];
}
