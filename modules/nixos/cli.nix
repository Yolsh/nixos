{lib, config, ...}: {
  imports = [
    ./command-line/starship.nix
    ./command-line/shell.nix
    ./command-line/defaults.nix
  ];

  options = {
    cli.enable = lib.mkEnableOption "enable all the default cli apps";
  };

  config = {
    starship.enable = lib.mkDefault config.cli.enable;
    cliDefaults.enable = lib.mkDefault config.cli.enable;
  };
}
