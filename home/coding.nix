{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
    uv
    git
    nodejs-slim_24
    nodePackages.pnpm
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };
}
