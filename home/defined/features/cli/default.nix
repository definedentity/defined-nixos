{ pkgs, ... }:
{
  imports = [
    ./zsh
    ./git.nix
    ./fzf.nix
    ./gpg.nix
    ./fastfetch
    ./nh.nix
    ./direnv.nix
  ];

  home.packages = with pkgs; [
    bottom # System viewer
    eza # Better ls
    ripgrep # Better grep
    bat # Better cat
    aria2 # Better curl
    yt-dlp # YouTube dlp
    dust # Better du
    pfetch-rs # System fetch
    cava # Audio visualizer

    # Entertainment
    spotify-player

    nixfmt-rfc-style # Nix formatter
    nixd # Nix LSP
    nix-init
  ];
}
