{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neofetch
    nmap
  ];

  programs.firefox.enable = true;
}
