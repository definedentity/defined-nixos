{
  imports = [
    ./features/desktop/common
    ./features/desktop/games

    ./features/dev
    ./features/cli

    ./features/catppuccin.nix
  ];

  home.username = "defined";
  home.homeDirectory = "/home/defined";
  home.stateVersion = "24.11";
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  programs.home-manager.enable = true;
}
