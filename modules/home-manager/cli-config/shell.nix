{
  programs.fish = {
    enable = true;
    interactiveShellInit = "set -g direnv_fish_mode eval_on_arrow";
    functions = {
      fish_greeting = "neofetch";
    };
  };
  programs.direnv.enable = true;
}
