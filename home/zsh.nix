{
  programs.zsh = {
    autocd = true;
    enableAutosuggestions = true;
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
