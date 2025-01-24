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

    # Cursor
    cursor = {
      name = "Rose Pine Cursor";
      package = pkgs.rose-pine-cursor;
    };

    # Fonts
    fonts = {

      sizes = {
        applications = 10;
        desktop = 10;
        popups = 10;
        terminal = 12;
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };

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
