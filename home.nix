{
  home = rec {
    username="ki";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
  
  imports = [
    ./modules/coding.nix
    ./modules/zsh.nix
    ./modules/cosmic.nix
  ];
}
