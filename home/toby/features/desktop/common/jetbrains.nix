{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    (jetbrains.plugins.addPlugins jetbrains.idea-community [])
  ];
}
