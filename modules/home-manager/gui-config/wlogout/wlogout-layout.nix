{
  programs.wlogout.layout = [
    {
      "label" = "lock";
      "action" = "hyprlock";
      "text" = "Lock";
      "keybind" = "l";
    }

    {
      "label" = "logout";
      "action" = "hyprctl dispatch exit";
      "text" = "Logout";
      "keybind" = "e";
    }

    {
      "label" = "shutdown";
      "action" = "systemctl poweroff";
      "text" = "Shutdown";
      "keybind" = "s";
    }

    {
      "label" = "reboot";
      "action" = "systemctl reboot";
      "text" = "Reboot";
      "keybind" = "r";
    }
  ];
}
