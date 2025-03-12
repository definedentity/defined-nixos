{unstable-pkgs, ...}: {
  imports = [
    ./extensions.nix
    ./policies.nix
    ./bookmarks.nix
  ];

  programs.firefox = {
    enable = true;
    package = unstable-pkgs.librewolf;
  };
}
