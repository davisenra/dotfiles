{ config, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
    ./home
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
  };

  nix.optimise.automatic = true;

  systemd.services.nix-gc.preStart = ''
    ${config.nix.package}/bin/nix-env \
      --profile /nix/var/nix/profiles/system \
      --delete-generations +6
  '';

  system.autoUpgrade = {
    enable = true;
    flake = "/home/davi/dotfiles";
    dates = "04:00";
  };

  services.logind.settings.Login = {
    HandleLidSwitch = "hibernate";
    HandleLidSwitchDocked = "hibernate";
  };

  services.gnome.gnome-keyring.enable = true;
  services.openssh.enable = true;
  services.fwupd.enable = true;

  security.pam.services.login.enableGnomeKeyring = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_TIME = "en_US.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
  };

  system.stateVersion = "25.11";
}
