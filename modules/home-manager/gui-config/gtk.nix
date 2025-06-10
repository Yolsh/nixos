{pkgs, ... }: {
  gtk = {
    enable = true;
    font.name = "JetBrains Mono Nerd Font";
    theme = {
      name = "Gruvbox-Dark";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;  # gruvbox-plus-icons when fixed
    };
    cursorTheme = {
      package = pkgs.capitaine-cursors-themed;
      name = "Capitaine Cursors (Gruvbox) - White";
      size = 12;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.pointerCursor = {
    package = pkgs.capitaine-cursors-themed;
      name = "Capitaine Cursors (Gruvbox) - White";
      size = 12;
  };
}
