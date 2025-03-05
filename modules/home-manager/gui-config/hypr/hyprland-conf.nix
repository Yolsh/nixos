{
  wayland.windowManager.hyprland.settings = {
    monitor = ",preferred,auto,auto";

    "$terminal" = "ghostty";
    "$fileManager" = "thunar";
    "$menu" = "ulauncher-toggle";
    "$lock" = "hyprlock";

    exec-once = [
      "lxqt-policykit-agent"
      "hyprpaper & waybar"
      "nm-applet"
      "hyprctl setcursor $XCURSOR_THEME 27"
      "swaync"
      "ulauncher --hide-window --no-window-shadow"
    ];

    env = [
      "XCURSOR_SIZE,27"
      "HYPRCURSOR_SIZE,10"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 20;

      border_size = 2;

      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";

      resize_on_border = false;

      allow_tearing = false;

      layout = "dwindle";
    };

    decoration = {
      rounding = 10;

      active_opacity = 0.85;
      inactive_opacity = 0.6;

      blur = {
        enabled = true;
        size = 4;
        passes = 3;
        new_optimizations = true;

        vibrancy = 0.1696;
      };

      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        color = "rgba(1a1a1aee)";
      };
    };

    animations = {
      enabled = true;

      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_status = "master";
    };

    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
    };

    input = {
      kb_layout = "gb";

      follow_mouse = 1;

      sensitivity = 0;

      touchpad = {
        natural_scroll = false;
      };
    };

    gestures = {
      workspace_swipe = false;
    };

    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };

    "$mainMod" = "SUPER";

    bind = [
      "$mainMod, Q, exec, $terminal"
      "$mainMod, C, killactive,"
      "$mainMod, M, exit,"
      "$mainMod, L, exec, $lock"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, W, togglefloating,"
      "$mainMod, F, fullscreen,"
      "$mainMod, R, exec, $menu"
      "$mainMod, P, pseudo,"
      "$mainMod, J, togglesplit,"
      "$mainMod, X, exec, missioncenter"
      
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      "$mainMod, S, togglespecialworkspace, magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"

      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
      ", Print, exec, grimblast --notify copysave area ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    bindel = [
      ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
      ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
    ];

    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    ];
  };
}
