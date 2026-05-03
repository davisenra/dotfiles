{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./home.nix
    <home-manager/nixos>
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  nixpkgs.config = {
    allowUnfree = true;

    firefox = {
      enableGoogleTalkPlugin = true;
      enableAdobeFlash = true;
      enableGnomeExtensions = true;
    };
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  system.copySystemConfiguration = true;

  system.stateVersion = "25.11";

  networking.hostName = "yoga";

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.enable = true;
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;

  programs.zsh.enable = true;

  users.users.davi = {
    isNormalUser = true;
    extraGroups = [ "networkmanager"  "wheel" "docker" ];
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    vim
    tree
    wget
    micro
    curl
    nixd
    git
    btop
    tmux
    fastfetch
    github-cli
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.settings.dns_enabled = true;
  };

  services.openssh.enable = true;
}
