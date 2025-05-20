{pkgs, ...}: {
  # Ulauncher plugins dependecies installation via overlay
  nixpkgs = {
    overlays = [
      (self: super:{
        ulauncher = super.ulauncher.overrideAttrs (old: rec {
          propagatedBuildInputs = with super; [
            old.propagatedBuildInputs
            python3Packages.pytz
            python3Packages.pint
            # python3Packages.simpleeval
            python3Packages.babel
          ];
        });
      })
    ];
  };

  # Ulauncher package
  environment.systemPackages = with pkgs; [
    ulauncher
  ];
}