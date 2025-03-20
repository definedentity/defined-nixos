{unstable-pkgs, ...}: {
  programs.thunderbird = {
    enable = true;
    package = unstable-pkgs.thunderbird;

    profiles = {
      "toby" = {
        isDefault = true;
      };
    };
  };
}
