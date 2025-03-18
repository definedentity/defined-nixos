{unstable-pkgs, ...}: {
  programs = {
    fish = {
      enable = true;

      shellInit = ''
        set -U fish_greeting
      '';

      shellAliases = {
        ls = "lsd";
        l = "lsd -l";
        la = "lsd -a";
        lla = "lsd -la";
        lt = "lsd --tree";

        cat = "bat";
        vim = "nvim";
        vi = "nvim";
        yt-flac = "yt-dlp -f bestaudio --extract-audio --audio-format flac";
        c = "clear";
        code = "codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland";
        spotify = "spotify_player";
      };
    };

    zoxide = {
      enable = true;
      options = ["--cmd cd"];

      package = unstable-pkgs.zoxide;
    };

    lsd = {
      enable = true;
    };

    starship = {
      enable = true;

      package = unstable-pkgs.starship;

      settings = builtins.fromTOML (builtins.readFile ./starship.toml);
    };
  };
}
