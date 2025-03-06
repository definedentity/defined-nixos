{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    mindustry-wayland
  ];
}
