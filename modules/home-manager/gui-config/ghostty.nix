{config, ... }: {
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      font-family = "JetBrains Mono";
      custom-shader = [
        # "~/nixos/GUI/terminal-crt.glsl"
        # "~/nixos/GUI/terminal-bloom.glsl"
      ];
    };
  };
}
