{ pkgs, ... }:
{
  home.shellAliases = {
    "e" = "exit";
    "nixos-update" = "sudo nixos-rebuild switch --flake";
    "nixpkgs-update" = "nix flake update nixpkgs";
  };
}
