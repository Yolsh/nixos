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
                    dotnetCorePackages.dotnet_9.sdk
                    dotnetCorePackages.dotnet_9.vmr
                    dotnetCorePackages.dotnet_9.runtime
                    dotnetCorePackages.dotnet_9.aspnetcore
                ];
                name = "dotnet 9.0.103";
            };
        }
    );
}