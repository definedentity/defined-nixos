{
  # Automatic updating
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  # Automatic cleanup
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 3";
  };

  # Optimize Nix store
  nix.settings = {
    auto-optimise-store = true;
  };
}
