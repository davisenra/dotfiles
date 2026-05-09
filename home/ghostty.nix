{ ... }:

{
  xdg.configFile."ghostty/config".text = ''
    window-decoration=none
    gtk-titlebar=false
    window-padding-x=0,0
    window-padding-y=0,0
    window-width=120
    window-height=35
    font-family=JetBrainsMono Nerd Font
    font-size=10
    theme=GitHub Dark Default
    mouse-scroll-multiplier=0.5
    background-opacity=0.9
  '';
}
