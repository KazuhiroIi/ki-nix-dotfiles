{
  services.xserver.enable = true;
  services.desktopManager.cosmic.enable = true;

  xdg.configFile."cosmic/com.system76.CosmicSettings.Shortcuts/v1/custom" = {
    source = ./.config/cosmic/custom-shortcuts;
  };
}
