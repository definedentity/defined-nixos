{
  inputs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin = {
      enable = true;

      settings = {
        flavour = "mocha";
        transparent_background = true;

        integrations = {
          notify = true;
        };
      };
    };
  };
}
