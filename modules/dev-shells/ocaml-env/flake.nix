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
                    ocaml
                    ocamlPackages.findlib
                    dune_3
                    ocamlPackages.ocaml-lsp
                    ocamlformat
                    ocamlPackages.utop
                    ocamlPackages.ocamlformat-rpc-lib
                ];
                name = "ocaml";
            };
        }
    );
}