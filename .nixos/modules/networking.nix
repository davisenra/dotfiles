{ ... }:

{
  networking.hostName = "yoga";
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];
}