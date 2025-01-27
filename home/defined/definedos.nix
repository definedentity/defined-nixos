{
  imports = [
    ./global

    ./features/desktop/common
    ./features/desktop/games
  ];

  home = {
    username = "defined";
    homeDirectory = "/home/defined";
    stateVersion = "24.11";
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };
  };

  systemd.user.startServices = "sd-switch";

  programs.home-manager.enable = true;
}
