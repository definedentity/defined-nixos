{pkgs, ...}: {
  imports = [
    ./bootstrap.nix
  ];

  programs.fish.enable = true;

  users.users.toby = {
    isNormalUser = true;
    description = "Nguyen Minh Tho";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };
}
