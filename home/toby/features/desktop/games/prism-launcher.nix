{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    (prismlauncher.override {
      jdks = [
        graalvm-ce
        zulu8
        zulu17
        zulu
      ];
    })
  ];
}
