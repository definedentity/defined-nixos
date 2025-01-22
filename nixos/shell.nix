{pkgs, ...}: {
    programs.zsh.enable = true;
    users.users.defined.shell = pkgs.zsh;
}
