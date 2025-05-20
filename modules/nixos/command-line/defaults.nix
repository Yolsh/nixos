{pkgs, lib, config, ...}: {
  options = {
    cliDefaults.enable = lib.mkEnableOption "enable default packages for the system";
  };

  config = lib.mkIf config.cliDefaults.enable {
    environment.systemPackages = with pkgs; [
      neofetch
      cbonsai
      yazi
      fzf
      brightnessctl
      lazygit
      lazydocker
      gh
    ];
    programs.git.enable = true;
  };
}
