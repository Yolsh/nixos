{inputs, ...}: {
  imports = [
    ./../../modules/home-manager/gui.nix
    ./../../modules/home-manager/cli.nix
  ];

  home = {
    stateVersion = "24.05";
    username = "Yolsh";
    homeDirectory = "/home/yolsh";
  };

  programs.home-manager.enable = true;
}
