default:
    @just --list

rebuild-pre:
    @git add --intent-to-add .

rebuild: rebuild-pre
    nh os switch

update:
    nix flake update
    flatpak update

rebuild-update: update rebuild
