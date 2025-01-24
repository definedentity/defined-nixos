{
  pkgs,
  ...
}:
{
  stylix = {
    enable = true;

    # Scheme
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";

    # Wallpaper
    image = ./background.png;

    # Fonts
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };

      sansSerif = {
        package = pkgs.open-sans;
        name = "OpenSans Sans Serif";
      };

      serif = {
        package = pkgs.open-sans;
        name = "OpenSans Serif";
      };
    };
  };
}
