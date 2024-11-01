# Installation Instructions
 - first get a copy of the [nixos minimal installer](https://nixos.org/download/)
- then flash to a usb stick
- following these [instructions](https://nixos.org/manual/nixos/stable/#sec-installation-manual) get to the point where you are connected to the internet
---
Once you are connected to the internet run these commands in the order shown:
`~> nix-shell -p git`

`~> git clone https://github.com/Yolsh/nixos.git/ /new-nix`

`~> exit`

If you want to use the Impermanence system then you need to run:
`~> `

Other wise simply use fdisk to partition your drive and then format and mount accordingly.

Afterwards run:
`~> nixos-generate-config --root /mnt`

`~> cp /mnt/etc/nixos/hardware-configuration.nix /new-nix/hosts/your-option-here`

`~> rm -r /mnt/etc/nixos/*`

`~> cp -r /new-nix/* /mnt/home/"lowercase-your-user"/nixos`

`~> cp -r /mnt/home/"lowercase-your-user/nixos/GUI/*" /mnt/home/"lowercse-your-user"/Pictures/GUI/`

`~> nixos-install --flake /mnt/home/"lowercase-your-user"/nixos/hosts#your-option-here`

Once installed reboot and login selecting the correct Desktop Environment and use the default user password of "nixos". Once logged in run the command: `~> sudo passwd "your-username-here"` to change the password.
