{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      add_newline = true;
      username = {
        show_always = true;
        format = "[$user](fg:bold black bg:#E7896A)";
      };
      time = {
        disabled = false;
        format = "[ $time](fg:bold white bg:#9C466A)";
      };
      git_branch = {
        format = "[ $symbol$branch(:$remote_branch)](fg:bold white bg:#7E3B73)";
      };
      git_status = {
        format = "[\\[$all_status$ahead_behind\\] ]($style)";
        style = "fg:bold white bg:#7E3B73";
      };
      os.disabled = false;
      nix_shell = {
        format = "[ -\\($name\\) ](fg:bold purple)";
      };
      directory = {
        format = "[$path](fg:bright-blue)[ $read_only](fg:bright-blue)";
        read_only = " ";
        home_symbol = "~  ";
      };
      character = {
        success_symbol = "[](bold green)";
        error_symbol = "[](bold red)";
      };
      ocaml = {
        style = "bg:#563E75 fg:bold yellow";
      };
      python = {
        style = "bg:#563E75 fg:yellow bold";
      };
      golang = {
        style = "bg:#563E75 fg:bold cyan";
      };
      elixir = {
        style = "bg:#563E75 fg:bold blue";
      };
      rust = {
        style = "bg:#563E75 fg:bold yellow";
      };
      format = "[ ](bg:#1c1426)[ ](bg:#3e2831)[ ](bg:#603b3d)[ ](bg:#824f48)[ ](bg:#A36253)[ ](bg:#c5765f)[ ](bg:#E7896A)$username[](bg:#9C466A fg:#E7896A)$time[](bg:#7E3B73 fg:#9C466A)$git_branch$git_status[](bg:#563E75 fg:#7E3B73)[$golang$dotnet$python$ocaml$zig](bg:#563E75)[](fg:#563E75)\n $nix_shell$directory$character";
    };
  };
}
