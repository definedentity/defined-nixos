{marketplace}: let
  removeLicense = pkg: pkg.override {meta.license = [];};
in
  with marketplace; [
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
    rust-lang.rust-analyzer
    redhat.vscode-yaml
    redhat.vscode-xml
    mikestead.dotenv
    quicktype.quicktype
    mintlify.document
    usernamehw.errorlens
    kisstkondoros.vscode-gutter-preview
    wix.vscode-import-cost
    miguelsolorio.symbols
    sumneko.lua

    (removeLicense ms-vscode.cpptools)
    (removeLicense supermaven.supermaven)
  ]
