{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    (prismlauncher.override {
      jdks = [
        graalvm-ce
        graalvmPackages.graalvm-oracle_17
      ];
    })
  ];
}
