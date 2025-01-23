{ unstable-pkgs, ... }:
{
  home.packages = with unstable-pkgs; [
    bun
  ];
}
