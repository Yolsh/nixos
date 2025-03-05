{lib, config, ...}: {
  options = {
    starship.enable = lib.mkEnableOption "enable the custom starship prompt";
  };

  config = lib.mkIf config.starship.enable {
    programs.starship.enable = true;
  };
}
