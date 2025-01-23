{ pkgs, ... }:
{
  home.packages = with pkgs; [
    blockbench
  ];
}
