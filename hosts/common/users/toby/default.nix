{pkgs, ...}: {
  imports = [
    ./bootstrap.nix
  ];

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
}
