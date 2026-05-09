{ ... }:

{
  services.flatpak = {
    enable = true;
    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];
    packages = [
      "com.spotify.Client"
      "com.discordapp.Discord"
      "io.dbeaver.DBeaverCommunity"
    ];
  };
}