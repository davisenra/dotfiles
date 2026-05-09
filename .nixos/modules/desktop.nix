{ ... }:

{
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us,br";
    variant = "intl,";
  };
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
  services.libinput.enable = true;
}
