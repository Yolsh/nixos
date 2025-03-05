{lib, config, ...}: {
  options = {
    thunar.enable = lib.mkEnableOption "enable thunar";
  };

  config = lib.mkIf config.thunar.enable { # might be options.thunar.enable
    programs.thunar = {
      enable = true;
      #plugins = ; #dark theme
    };
  };
}