{ pkgs, unstable-pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.kdePackages.qtsvg
    pkgs.kdePackages.qtmultimedia
    pkgs.kdePackages.qtvirtualkeyboard

    (unstable-pkgs.sddm-astronaut.override {
      embeddedTheme = "astronaut";
    })
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    extraPackages = with pkgs; [
      kdePackages.qtsvg
      kdePackages.qtmultimedia
      kdePackages.qtvirtualkeyboard
    ];

    theme = "sddm-astronaut-theme";
  };
}
