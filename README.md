# Installation Instructions
 - first get a copy of the [nixos minimal installer](https://nixos.org/download/)
- then flash to a usb stick
- following these [instructions](https://nixos.org/manual/nixos/stable/#sec-installation-manual) get to the point where you are connected to the internet
---
Once you are connected to the internet run these commands in the order shown:
`~> nix-shell -p git`

`~> git clone https://github.com/Yolsh/nixos.git/ /new-nix`

`~> exit`

Simply use fdisk to partition your drive and then format and mount accordingly.

Afterwards run:
`~> nixos-generate-config --root /mnt`

`~> rm /mnt/etc/nixos/configuration.nix`

`~> cp /mnt/etc/nixos/hardware-configuration.nix /etc/nixos`

`~> cp -r --no-preserve=mode /new-nix/* /mnt/home/"lowercase-your-user"/nixos`

If using the GUI option: `~> cp -r /mnt/home/"lowercase-your-user"/nixos/GUI/* /mnt/home/"lowercse-your-user"/Pictures/GUI/`

`~> nixos-install --impure --flake /mnt/home/"lowercase-your-user"/nixos/hosts#your-option-here`

Once installed reboot and login selecting the correct Desktop Environment and use the default user password of "nixos". Once logged in run the command: `~> sudo passwd "your-username-here"` to change the password.

Then you need to run these commands so that your user can edit the nix config:

`~> mkdir nixos-tmp`

`~> cp -r --no-preserve=mode ~/nixos/* ~/nixos_tmp/`

`~> sudo rm -r ~/nixos`

`~> mv nixos_tmp nixos/`

To update use the command: `nixos-rebuild switch --impure --flake ~/nixos/hosts#your-option-here`