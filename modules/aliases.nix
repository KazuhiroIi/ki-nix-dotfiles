{ pkgs, ... }:
{
  home.shellAliases = {
    "e" = "exit";
    "nixos-update" = "sudo nixos-rebuild switch --flake";
  };
}
