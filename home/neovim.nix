{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    neovim
    git
    ripgrep
    fd
    unzip
    gzip
    gcc
    gnumake
  ];

  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/ki-neovim-dotfiles";
}