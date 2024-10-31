{lib, config, pkgs, ...}: {
  options = {
    greetd.enable = lib.mkEnableOption "enable the greetd greeter utility";
  };

  config = lib.mkIf config.greetd.enable {
    services.greetd.enable = true;
    programs.regreet = {
      enable = true;
      settings = {
        background = {
          path = "/etc/nixos/GUI/BG.png";
          fit = "Fill";
        };
        GTK = {
          application_prefer_dark_theme = true;
        };
        command = {
          reboot = ["systemctl" "reboot"];
          poweroff = ["systemctl" "poweroff"];
        };
      };
    };
  };
}
