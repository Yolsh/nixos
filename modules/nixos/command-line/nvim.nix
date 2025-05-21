{lib, config, pkgs, ...}: {
  options = {
    nvim.enable = lib.mkEnableOption "enable neovim editor";
  };

  config = lib.mkIf config.nvim.enable {
    program.nvf = {
      enable = true;
    };
  };
}