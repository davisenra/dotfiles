{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.resumeDevice = "/dev/disk/by-uuid/f3a328c3-f33e-4127-9657-bb1de960d8b8";
  services.fstrim.enable = true;
}