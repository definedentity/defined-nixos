{pkgs, ...}: {
  programs.zsh.enable = true;

  users.users.toby = {
    isNormalUser = true;
    description = "Nguyen Minh Tho";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
  };

  systemd.services.toby-bootstrap = {
    wantedBy = ["multi-user.target"];
    script = ''
      mkdir -p /home/toby/Projects
      mkdir -p /home/toby/Workspace
    '';
  };
}
