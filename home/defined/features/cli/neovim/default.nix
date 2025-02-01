{
  inputs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins.nix
    ./colorscheme.nix
  ];

  programs.nixvim = {
    enable = true;
  };
}
