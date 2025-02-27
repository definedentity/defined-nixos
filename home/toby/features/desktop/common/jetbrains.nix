{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    jetbrains.idea-community
  ];
}
