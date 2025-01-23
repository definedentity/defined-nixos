{ pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./git.nix
    ./fzf.nix
    ./gpg.nix
    ./fastfetch.nix
  ];

  home.packages = with pkgs; [
    bottom # System viewer
    eza # Better ls
    ripgrep # Better grep
    bat # Better cat
    aria2 # Better curl
    yt-dlp # YouTube dlp

    nh # Nix helper
    nixfmt-rfc-style # Nix formatter
  ];
}
