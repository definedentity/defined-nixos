{
  unstable-pkgs,
  lib,
  system,
  inputs,
  ...
}: let
  extensions =
    inputs.nix-vscode-extensions.extensions.${system};

  extensionsList = with extensions.vscode-marketplace; [
    streetsidesoftware.code-spell-checker
    christian-kohler.path-intellisense
    ritwickdey.liveserver
    yoavbls.pretty-ts-errors
    esbenp.prettier-vscode
    mkhl.direnv
    formulahendry.auto-rename-tag
    formulahendry.auto-close-tag
    formulahendry.auto-complete-tag
    christian-kohler.npm-intellisense
    jnoortheen.nix-ide
    pkief.material-icon-theme
    eamodio.gitlens
    ziglang.vscode-zig
    dsznajder.es7-react-js-snippets
    aaron-bond.better-comments
    alefragnani.project-manager
    tamasfe.even-better-toml
    bradlc.vscode-tailwindcss
    nefrob.vscode-just-syntax
    editorconfig.editorconfig
    foxundermoon.shell-format
    dbaeumer.vscode-eslint
    supermaven.supermaven
    rust-lang.rust-analyzer
  ];
in {
  imports = [
    ./keybindings.nix
  ];

  programs.vscode = {
    enable = true;
    package = unstable-pkgs.vscodium;

    userSettings = lib.mkForce (builtins.fromJSON (builtins.readFile ./settings.json));

    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
    extensions = extensionsList;
  };
}
