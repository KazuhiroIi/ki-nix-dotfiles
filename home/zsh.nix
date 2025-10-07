{
  programs.zsh = {
    autocd = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    shellAliases = {
      e = "exit";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
