{pkgs, lib, config, ...}: {
  options = {
    vscode.enable = lib.mkEnableOption "enable vscode with plugins";
  };

  config = lib.mkIf config.vscode.enable {
    environment.systemPackages = with pkgs; [ 
        vscode
        (vscode-with-extensions.override {
            vscodeExtensions = with vscode-extensions; [
                ocamllabs.ocaml-platform
                golang.go
                ms-python.vscode-pylance
                ms-python.python
                ziglang.vscode-zig
            ];
        })
    ];
  };
}