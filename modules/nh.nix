{self, pkgs, ...}: {
    programs.nh = {
        enable = true;
        flake = "/home/defined/definedos";
    };
}
