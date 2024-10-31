{pkgs, lib, inputs, ...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "/etc/nixos/GUI/BG.png";
      wallpaper = ", /etc/nixos/GUI/BG.png";
    };
  };
}
