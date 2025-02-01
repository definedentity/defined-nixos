{
  pkgs,
  unstable-pkgs,
  ...
}:
{
  stylix = {
    enable = true;

    # Scheme
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    # Wallpaper
    image = ./background.png;

    polarity = "dark";

    targets.plymouth = {
      enable = true;

      logo = ./avatar.png;
      logoAnimated = false;
    };

    # Cursor
    cursor = {
      package = unstable-pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
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
