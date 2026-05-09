{ lib, ... }:

let
  mkTuple = lib.gvariant.mkTuple;
in
{
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/input-sources" = {
        sources = [
          (mkTuple [
            "xkb"
            "us+altgr-intl"
          ])
          (mkTuple [
            "xkb"
            "br"
          ])
        ];
      };
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        icon-theme = "Papirus";
      };
      "org/gnome/desktop/wm/preferences" = {
        button-layout = "appmenu:minimize,maximize,close";
      };
      "org/gnome/mutter" = {
        experimental-features = [
          "variable-refresh-rate"
          "scale-monitor-framebuffer"
        ];
      };
      "org/gnome/shell/extensions/dash-to-dock" = {
        background-opacity = 0.0;
        click-action = "minimize";
        custom-background-color = true;
        dash-max-icon-size = 48;
        disable-overview-on-startup = true;
        dock-position = "BOTTOM";
        height-fraction = 0.9;
        preferred-monitor = -2;
        preferred-monitor-by-connector = "HDMI-1";
        show-apps-always-in-the-edge = false;
        show-mounts = false;
        show-show-apps-button = false;
        show-trash = false;
        transparency-mode = "FIXED";
      };
      "org/gnome/shell/extensions/alphabetical-app-grid" = {
        sort-order = "alphabetical";
        folder-order = "alphabetical";
      };
    };
  };
}
