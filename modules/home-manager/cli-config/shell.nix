{
  programs.fish = {
    enable = true;
    interactiveShellInit = "set -g direnv_fish_mode eval_on_arrow";
    functions = {
      fish_greeting = "neofetch";
    };
    shellAliases = {
      update = "sudo nixos-rebuild switch --upgrade --impure --flake ~/nixos/hosts#thinkpad";
    };
    shellInit = "theme_gruvbox dark hard";
  };
}
