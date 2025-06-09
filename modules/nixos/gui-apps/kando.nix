{pkgs, ...}: {
    environment.systemPackages = [
        pkgs.kando
    ];
}
