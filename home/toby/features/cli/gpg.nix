{unstable-pkgs, ...}: {
  home.packages = with unstable-pkgs; [
    gpg-tui
  ];

  services.gpg-agent = {
    enable = true;

    pinentryPackage = unstable-pkgs.pinentry-tty;
  };

  programs = let
    fixGpg = ''
      gpgconf --launch gpg-agent
    '';
  in {
    zsh.loginExtra = fixGpg;

    gpg = {
      enable = true;

      publicKeys = [
        {
          source = ../../keys/definedentity.pgp;
          trust = 5;
        }
        {
          source = ../../keys/toby.pgp;
          trust = 5;
        }
      ];
    };
  };
}
