{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gpg-tui
  ];

  services.gpg-agent = {
    enable = true;

    pinentryPackage = pkgs.pinentry-tty;
  };

  programs =
    let
      fixGpg = ''
        gpgconf --launch gpg-agent
      '';
    in
    {
      zsh.loginExtra = fixGpg;

      gpg = {
        enable = true;

        publicKeys = [
          {
            source = ../../keys/public.pgp;
            trust = 5;
          }
        ];
      };
    };
}
