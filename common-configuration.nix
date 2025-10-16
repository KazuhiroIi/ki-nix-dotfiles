{ config, pkgs, ... }:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; 
  nixpkgs.config.allowUnfree = true;  

  services.xserver.enable = true;
  services.desktopManager.cosmic.enable = true;
}
