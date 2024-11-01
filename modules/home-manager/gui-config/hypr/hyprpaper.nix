{pkgs, lib, inputs, ...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "~/Pictures/GUI/BG.png";
      wallpaper = ", ~/Pictures/GUI/BG.png";
    };
  };
}
