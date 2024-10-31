{lib, config, ...}: {
  imports = [
    ./wlogout-layout.nix
    ./wlogout-style.nix
  ];

  programs.wlogout.enable = true;
}
