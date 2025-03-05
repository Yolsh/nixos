{pkgs, lib, inputs, ...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "~/nixos/GUI/BG.png";
      wallpaper = ", ~/nixos/GUI/BG.png";
    };
  };
}
