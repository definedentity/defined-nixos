{unstable-pkgs, ...}: {
  imports = [
    ./aliases.nix
  ];

  programs = {
    fish = {
      enable = true;

      shellInit = ''
        set -U fish_greeting
      '';
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
