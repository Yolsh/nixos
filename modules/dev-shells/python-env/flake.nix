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
                    python312
                ];
                name = "python 3.12";
            };
        }
    );
}