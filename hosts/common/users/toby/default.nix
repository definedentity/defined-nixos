{unstable-pkgs, ...}: {
  imports = [
    ./bootstrap.nix
  ];

  programs.fish = {
    enable = true;

    package = unstable-pkgs.fish;
  };

  users.users.toby = {
    isNormalUser = true;
    description = "Nguyen Minh Tho";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = unstable-pkgs.fish;
  };
}
