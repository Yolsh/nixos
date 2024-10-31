{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";

      modules-left = [ "hyprland/workspaces" "hyprland/submap" ];
      modules-center = [ "clock" "hyprland/window" ];
      modules-right = [ "tray" "network" "pulseaudio" "battery" "custom/power" ];
    

      "hyprland/submap" = {
        format = "<span style=\"italic\">{}</span>";
      };

      network = {
        format-wifi = "{essid} ({signalStrength}%)  ";
        format-ethernet = "{ifname}  ";
        format-disconected = " ";
        max-length = 50;
        on-click = "kitty -e 'nmtui'";
      };

      "hyprland/window" = {
        format = "{class}";
        rewrite = {
          Google-chrome = "  ";
          kitty = "  ";
          Thunar = "  ";
          Code = "  ";
          nwg-look = "   ";
        };
        seperate-outputs = true;
      };

      tray = {
        icon-size = 15;
        spacing = 10;
      };

      clock = {
        #tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #format-alt = "{:%Y-%m-%d}";
        on-click = "gnome-calendar";
      };

      pulseaudio = {
        format = "{volume}% {icon} ";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = "0% {icon} ";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = ["" "" ""];
        };
        on-click = "kmix";
      };

      "custom/power" = {
        format = " ";
        on-click = "wlogout -b 4";
      };

      battery = {
        bat = "BAT0";
        interval = 60;
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{capacity}% {icon}";
        format-icons = ["" "" "" "" ""];
        max-length = 25;
      };
    };
  };
}
