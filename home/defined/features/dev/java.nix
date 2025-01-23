{ unstable-pkgs, ... }:
{
  home.packages = with unstable-pkgs; [
    graalvmPackages.graalvm-oracle_17
  ];
}
