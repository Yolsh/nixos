{config, ... }: {
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      font-family = "JetBrains Mono";
      custom-shader = [
        "~/nixos/GUI/terminal-crt.glsl" # would like to work but boken for some reason
        "~/nixos/GUI/terminal-bloom.glsl"
      ];
      theme = "rose-pine";
    };
  };
}
