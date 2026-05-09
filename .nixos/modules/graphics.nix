{ pkgs, ... }:

{
  hardware.graphics = {
    extraPackages = with pkgs; [
      intel-media-driver
    ];

    enable32Bit = true;
  };
}
