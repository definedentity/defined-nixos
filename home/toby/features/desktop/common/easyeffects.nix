{unstable-pkgs, ...}: {
  services.easyeffects = {
    enable = true;

    package = unstable-pkgs.easyeffects;
  };
}
