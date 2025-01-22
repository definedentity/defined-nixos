{ ... }:
{
  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "sudo"
          "command-not-found"
          "web-search"
        ];
      };

      shellAliases = {
        ls = "eza --icons --color";
        ll = "eza --icons -alh --color";
        tree = "eza --icons --tree --color";
        cat = "bat";
        vim = "nvim";
        vi = "nvim";
        yt-flac = "yt-dlp -f bestaudio --extract-audio --audio-format flac";
        c = "clear";
        code = "code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland";
      };
    };

    zoxide = {
      enable = true;
      options = [ "--cmd cd" ];
    };

    eza = {
      enable = true;
    };

    starship = {
      enable = true;

      settings = builtins.fromTOML (builtins.readFile ../config/starship.toml);
    };
  };
}
