{pkgs, ...}: {
  services.flatpak.enable = true;

  systemd.services.flatpak-repo = {
    path = [pkgs.flatpak];
    wantedBy = ["multi-user.target"];
    script = ''
      flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    '';
  };
}
