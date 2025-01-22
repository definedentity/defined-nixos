{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Apps
    discord
    vscode

    # Nix
    nixfmt-rfc-style

    # Editors
    audacity
    blockbench

    # IDEs
    jetbrains.idea-community-bin

    # Utils
    bat
    yt-dlp
    fzf
    aria2
    bottom
    gpg-tui
  ];

  programs = {
    # System fetch
    fastfetch = {
      enable = true;
      settings = builtins.fromJSON (builtins.readFile ../config/fastfetch.jsonc);
    };

    obs-studio = {
      enable = true;
    };
  };
}
