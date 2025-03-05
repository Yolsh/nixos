{
  programs.hyprlock = {
    enable = true;
    settings = {
      # background:
      background = {
        path = "~/nixos/GUI/BG.png";
        blur_passes = 2;
        contrast = 1;
        brightness = 0.5;
        vibrancy = 0.2;
        vibrancy_darkness = 0.2;
      };

      #general
      general = {
        hide_cursor = false;
        grace = 0;
        disable_loading_bar = true;
      };

      #input field
      input-field = {
        size = "250, 60";
        outline_thickness = 2;
        dots_size = 0.2;
        dots_spacing = 0.35;
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0.2)";
        font_color = "$foreground";
        fade_on_empty = false;
        rounding = -1;
        check_color = "rgb(204, 136, 34)";
        placeholder_text = "<i><span foreground='##cc8924'>$USER, Password...</span></i>";
        hide_input = false;
        position = "0, -120";
        halign = "center";
        valign = "center";
      };

      #date
      label = [{
        text = "cmd[update:1000] echo $(date +'%A, %B %d')";
        color = "rgba(120, 200, 240, 0.75)";
        font_size = 18;
        font_family = "JetBrains Mono";
        position = "0, 165";
        halign = "center";
        valign = "center";
      }
      #time
      {
        text = "cmd[update:1000] echo $(date +'%-I:%M')";
        color = "rgba(120, 200, 240, 0.75)";
        font_size = 75;
        font_family = "JetBrains Mono Extrabold";
        position = "0, 225";
        halign = "center";
        valign = "center";
      }];
    };
  };
}
