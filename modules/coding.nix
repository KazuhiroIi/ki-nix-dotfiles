{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
    uv
    gh
    nodejs-slim_24
    nodePackages.pnpm
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
