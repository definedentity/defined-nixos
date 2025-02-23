{unstable-pkgs, ...}: {
  fonts.packages = with unstable-pkgs; [
    monaspace
  ];
}
