{ config, pkgs, ... }:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; 
  nixpkgs.config.allowUnfree = true;  

  users.users.ki.shell = pkgs.zsh;
  programs.zsh.enable = true;

  imports = [
    ./modules/fonts.nix
    ./modules/cosmic.nix
    ./modules/fcitx5.nix
  ];
}
