{
  pkgs,
  unstable-pkgs,
  ...
}: {
  home.packages = with pkgs; [
    (prismlauncher.override
      {
        jdks = with unstable-pkgs.graalvmPackages; [graalvm-oracle_17 graalvm-oracle];
      })
  ];
}
