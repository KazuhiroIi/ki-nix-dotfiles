{pkgs, ...}: {
  home.packages = with pkgs; [
    vscode
    uv
    git
    nodejs-slim_24
    nodePackages.pnpm
    github-copilot-cli
    vim
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

  programs.lazygit = {
    enable = true;
  };
}
