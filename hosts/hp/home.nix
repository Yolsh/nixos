{inputs, ...}: {
  imports = [
    ./../../modules/home-manager/gui.nix
    ./../../modules/home-manager/cli.nix
  ];

  home = {
    stateVersion = "25.05";
    username = "Yolsh";
    homeDirectory = "/home/yolsh";
  };

  programs.home-manager.enable = true;
  programs.waybar.settings.mainbar.battery.bat = "BAT0";
  programs.fish.shellAliases.update = "sudo nixos-rebuild switch --upgrade --impure --flake ~/nixos/hosts#hp";
}
