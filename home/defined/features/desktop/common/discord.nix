{ unstable-pkgs, ... }:
{
  home.packages = with unstable-pkgs; [
    vesktop
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })
  ];
}
