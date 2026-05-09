{ ... }:

{
  services.thermald.enable = true;
  services.upower.enable = true;
  services.power-profiles-daemon.enable = false;
  services.auto-cpufreq.enable = true;
  hardware.bluetooth.enable = true;
}
