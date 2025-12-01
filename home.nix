{
  home = rec {
    username="ki";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
  
  imports = [
    ./home/coding.nix
    ./home/zsh.nix
    ./home/utils.nix
    ./home/aliases.nix
    ./home/cosmic.nix
    ./home/fcitx5.nix
    ./home/wezterm.nix
    ./home/neovim.nix
  ];
}
