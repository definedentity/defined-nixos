{
  # Automatic updating
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  nix = {
    # Automatic cleanup
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 3d";
    };

    # Optimize Nix store
    settings = {
      auto-optimise-store = true;
    };
  };
}
