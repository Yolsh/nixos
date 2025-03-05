{pkgs, lib, inputs, ...}: {
  imports = [
    ./waybar-conf.nix
    ./waybar-style.nix
  ];
  
  programs.waybar = {
    enable = true;
    systemd.enable = false;
  };
}
