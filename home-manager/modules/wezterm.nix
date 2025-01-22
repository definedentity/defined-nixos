{ inputs, system, ... }:
{
  programs.wezterm = {
    enable = true;
    package = inputs.wezterm.packages.${system}.default;

    extraConfig = builtins.readFile ../config/wezterm.lua;
  };
}
