{pkgs, lib, inputs, ...}: {
  imports = [
    ./hyprland-conf.nix
    ./hyprpaper.nix
    ./hyprlock.nix
  ];  


  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = false;
    systemd.enable = false;
  };
}
