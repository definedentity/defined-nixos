{ pkgs, ... }:
{
  imports = [
    ../common
    ./hardware-configuration.nix
  ];

  programs.zsh.enable = true;
  users.users.defined.shell = pkgs.zsh;

  users.users.defined = {
    isNormalUser = true;
    description = "Nguyen Minh Tho";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  system.stateVersion = "24.11";
}
