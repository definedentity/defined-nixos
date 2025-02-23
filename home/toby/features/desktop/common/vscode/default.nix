{
  unstable-pkgs,
  lib,
  ...
}: let
  plugins = (import ./extensions.nix) {
    pkgs = unstable-pkgs;
    lib = lib;
  };
  extensionList = builtins.concatLists (
    map (attrset: lib.attrValues attrset) (lib.attrValues plugins)
  );
in {
  imports = [
    ./keybindings.nix
  ];

  programs.vscode = {
    enable = true;

    userSettings = lib.mkForce (builtins.fromJSON (builtins.readFile ./settings.json));

    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
    extensions = extensionList;
  };
}
