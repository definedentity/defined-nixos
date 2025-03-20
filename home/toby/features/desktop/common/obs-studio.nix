{unstable-pkgs, ...}: {
  programs.obs-studio = {
    enable = true;

    package = unstable-pkgs.obs-studio;

    plugins = with unstable-pkgs.obs-studio-plugins; [
      obs-pipewire-audio-capture
      obs-move-transition
    ];
  };
}
