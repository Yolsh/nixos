{
  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixos-unstable";
  };

  outputs = { ... }: {
    devShells.default = pkgs.mkShell {
        buildInputs = with pkgs [
            python312
        ];

    }
  };
}