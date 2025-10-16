{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.desktopManager.cosmic.enable = true;
}