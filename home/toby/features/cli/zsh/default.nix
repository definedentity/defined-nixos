{unstable-pkgs, ...}: {
  programs = {
    zsh = {
      enable = true;

      initExtraBeforeCompInit = ''
        if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
          print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
          command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
          command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
          print -P "%F{33} %F{34}Installation successful.%f%b" || \
          print -P "%F{160} The clone has failed.%f%b"
        fi
        source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

        zinit light zsh-users/zsh-syntax-highlighting
        zinit light zsh-users/zsh-completions
        zinit light zsh-users/zsh-autosuggestions
        zinit light Aloxaf/fzf-tab
        zinit light MichaelAquilina/zsh-you-should-use

        zinit snippet OMZL::functions.zsh

        zinit snippet OMZP::git
        zinit snippet OMZP::web-search
      '';

      initExtra = ''
        zstyle ':completion:*' menu no
        zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

        nitch
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
