{
  programs.fish.shellAliases = {
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

    g = "git";
    ga = "git add";
    grhh = "git reset --hard HEAD";
    gp = "git pull";
    gst = "git status";
  };
}
