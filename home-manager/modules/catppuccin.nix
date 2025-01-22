{pkgs, ...}: {
	home.packages = with pkgs; [
        (catppuccin-kde.override {
            flavour = [ "macchiato" ];
            accents = [ "mauve" ];
            winDecStyles = [ "modern" ];
        })
    ];
}
