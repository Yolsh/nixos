{pkgs, lib, config, ...}: {
  options = {
    cliDefaults.enable = lib.mkEnableOption "enable default packages for the system";
  };

  config = lib.mkIf config.cliDefaults.enable {
    environment.systemPackages = with pkgs; [
      cbonsai
      yazi
      fzf
      brightnessctl
      lazygit
      lazydocker
      gh
      bat
      eza
      fastfetch
    ];
    programs.git.enable = true;
  };
}
