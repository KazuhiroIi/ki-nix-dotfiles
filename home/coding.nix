{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
    uv
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

  programs.git.enable = true;
}
