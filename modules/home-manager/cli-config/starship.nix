{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      add_newline = true;
      palette = "my_gruv";
      palettes.my_gruv = {
        grad_1 = "#282828";
        grad_2 = "#292929";
        grad_3 = "#463328";
        grad_4 = "#623c26";
        grad_5 = "#7e4523";
        grad_6 = "#9c4e1f";
        grad_7 = "#b95719";
        fg0 = "#fbf1c7";
        or_d = "#d65d0e";
        or_l = "#fe8019";
        purp_d = "#b16286";
        purp_l = "#d3869b";
      };
      username = {
        show_always = true;
        style_user = "bg:or_d fg:fg0";
        style_root = "bg:or_d fg:fg0";
        format = "[ $user ]($style)";
      };
      time = {
        disabled = false;
        time_format = "%R";
        style = "fg:bold white bg:or_l";
        format = "[ $time]($style)";
      };
      git_branch = {
        style = "bg:purp_d";
        format = "[ $symbol$branch(:$remote_branch)]($style)";
      };
      git_status = {
        format = "[\\[$all_status$ahead_behind\\] ]($style)";
        style = "fg:bold white bg:purp_d";
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
        style = "bg:purp_l fg:bold yellow";
      };
      python = {
        style = "bg:purp_l fg:yellow bold";
      };
      golang = {
        style = "bg:purp_l fg:bold cyan";
      };
      elixir = {
        style = "bg:purp_l fg:bold blue";
      };
      rust = {
        style = "bg:purp_l fg:bold yellow";
      };
      format = " (bg:grad_1)[ ](bg:grad_2)[ ](bg:grad_3)[ ](bg:grad_4)[ ](bg:grad_5)[ ](bg:grad_6)[ ](bg:grad_7)$username[](bg:or_l fg:or_d)$time[](bg:purp_d fg:or_l)$git_branch$git_status[](bg:purp_l fg:purp_d)[$golang$dotnet$python$ocaml$zig](bg:purp_l)[](fg:purp_l)\n $nix_shell$directory$character";
    };
  };
}
