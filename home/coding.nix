{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
    uv
    bun
    gh
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
