{ pkgs, config, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 6;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.resumeDevice = (builtins.head config.swapDevices).device;
  services.fstrim.enable = true;
}