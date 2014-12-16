# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "xhci_hcd" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/md126p1";
      fsType = "ext4";
      options = "rw,stripe=32,data=ordered,relatime,discard";
    };

 swapDevices =
   [ { device = "/dev/md126p2"; }
   ];

  nix.maxJobs = 8;
}
