{pkgs, ...}: {
  # Ulauncher plugins dependecies installation via overlay
  nixpkgs = {
    overlays = [
      (_: prev: {
        ulauncher = prev.ulauncher.overrideAttrs (old: {
          propagatedBuildInputs = with prev.python3Packages;
            old.propagatedBuildInputs
            ++ [
              pytz
              babel
              pint
              simpleeval
              parsedatetime
            ];
        });
      })
    ];
  };

  # Ulauncher package
  home.packages = with pkgs; [
    ulauncher
  ];
}