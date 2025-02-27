{
  unstable-pkgs,
  lib,
  system,
  inputs,
  ...
}: let
  extensionsList = import ./extensions.nix {marketplace = inputs.nix-vscode-extensions.extensions.${system}.vscode-marketplace;};
in {
  imports = [
    ./keybindings.nix
  ];

  programs.vscode = {
    enable = true;
    package = unstable-pkgs.vscodium;

    userSettings = lib.mkForce (builtins.fromJSON (builtins.readFile ./settings.json));
    extensions = extensionsList;

    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
  };
}
