{ ... }:
{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.desktopManager.plasma6.enable = true;
}
