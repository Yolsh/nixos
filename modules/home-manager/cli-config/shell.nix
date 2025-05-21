{
  programs.fish = {
    enable = true;
    interactiveShellInit = "set -g direnv_fish_mode eval_on_arrow";
    functions = {
      fish_greeting = "fastfetch";
    };
    shellAliases = {
      update = "sudo nixos-rebuild switch --upgrade --impure --flake ~/nixos/hosts#thinkpad";
      ls = "eza";
      tree = "eza --tree";
      cat = "bat";
    };
    shellInit = "theme_gruvbox dark hard";
  };
  programs.zoxide.enable = true;
}
