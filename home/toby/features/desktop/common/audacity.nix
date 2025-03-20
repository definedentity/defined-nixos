{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    audacity
  ];
}
