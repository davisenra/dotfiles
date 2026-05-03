{ ... }:

{
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us,br";
    variant = ",abnt2";
  };
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
  services.libinput.enable = true;
}