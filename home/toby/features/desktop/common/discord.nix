{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    discord
  ];
}
