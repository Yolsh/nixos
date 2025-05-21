{pkgs, ... }: {
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    clock24 = true;
    shortcut = "s";
    disableConfirmationPrompt = true;
    plugins = with pkgs.tmuxPlugins; [
      gruvbox
    ];
    extraConfig = "set-option -g status-position top";
  };
}