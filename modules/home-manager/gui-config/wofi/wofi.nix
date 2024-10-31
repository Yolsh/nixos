{pkgs, lib, inputs, ... }: {
  imports = [
    ./wofi-conf.nix
  ];

  programs.wofi = {
    enable = true;
    settings = {
      allow_images = true;
      allow_markup = true;
      insensitive = true;
      hide_scroll = true;
      no_actions = true;
      term = "foot";
      width = "55%";
      lines = 6;
      always_parse_args = true;
    };
  };
}
