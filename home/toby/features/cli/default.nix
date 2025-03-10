{
  pkgs,
  unstable-pkgs,
  ...
}: {
  imports = [
    ./zsh
    ./neovim
    ./git.nix
    ./fzf.nix
    ./gpg.nix
    ./fastfetch
    ./nh.nix
    ./direnv.nix
  ];

  home.packages = with pkgs;
    [
      # Media converter
      ((ffmpeg-full.override {withUnfree = true;}).overrideAttrs (_: {doCheck = false;}))
    ]
    ++ (with unstable-pkgs; [
      bottom # System viewer
      eza # Better ls
      ripgrep # Better grep
      bat # Better cat
      aria2 # Better curl
      yt-dlp # YouTube dlp
      dust # Better du
      nitch # System fetch
      cava # Audio visualizer
      just # Command runner
      spotify-player # Spotify player
      feh # Image viewer
      impala # Wifi manager

      gparted # Partition manager
      btrfs-progs # Btrfs tools

      # Nix
      nixd # Nix LSP
      alejandra # Nix formatter
    ]);
}
