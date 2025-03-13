{pkgs, ...}: {
  services = {
    xserver = {
      enable = true;
      videoDrivers = ["nvidia"];
    };

    desktopManager.plasma6.enable = true;
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    elisa
    kate
    okular
    discover
    print-manager
  ];
}
