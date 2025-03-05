{lib, config, pkgs, ...}: let 
tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
hyprland-session = "${pkgs.hyprland}/share/wayland-sessions";
in 
{
  options = {
    greetd.enable = lib.mkEnableOption "enable the greetd greeter utility";
  };

  config = lib.mkIf config.greetd.enable {
    services.greetd = {
      enable = true;
      settings = rec {
        default_session = {
          command = "${tuigreet} --time --remember --remember-session --sessions ${hyprland-session}";
          user = "greeter";
        };
      };
    };
    systemd.services.greetd.serviceConfig = {
      Type = "idle";
      StandardInput = "tty";
      StandardOutput = "tty";
      StandardError = "journal"; # Without this errors will spam on screen
      # Without these bootlogs will spam on screen
      TTYReset = true;
      TTYVHangup = true;
      TTYVTDisallocate = true;
    };
  };
}
