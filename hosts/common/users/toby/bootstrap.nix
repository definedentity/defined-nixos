{
  systemd.services.toby-bootstrap = {
    description = "This service will prepare everything for toby";

    wantedBy = ["multi-user.target"];
    script = ''
      mkdir -p /home/toby/Projects
      mkdir -p /home/toby/Workspace
    '';
  };
}
