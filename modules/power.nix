{ pkgs, ... }:

{
  hardware.graphics = {
    extraPackages = with pkgs; [
      intel-media-driver
      intel-vaapi-driver
    ];

    enable32Bit = true;
  };

  services.thermald.enable = true;
  services.upower.enable = true;
  services.power-profiles-daemon.enable = false;
  services.auto-cpufreq.enable = true;
  hardware.bluetooth.enable = true;
}
