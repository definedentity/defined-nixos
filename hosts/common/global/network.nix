{ lib, ... }:
{
  networking = {
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
    nameservers = ["1.1.1.1" "1.0.0.1"];
  };
}
