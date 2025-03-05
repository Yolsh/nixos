{
    inputs = {
        nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = { self, nixpkgs, flake-utils, ...}: 
    flake-utils.lib.eachDefaultSystem
    (system:
        let
            pkgs = import nixpkgs {
                inherit system;
            };
        in
        with pkgs;
        {
            devShells.default = mkShell {
                buildInputs = [
                    go_1_23
                ];
                name = "go 1.23";
            };
        }
    );
}