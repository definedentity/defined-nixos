{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gpg-tui
  ];
}
