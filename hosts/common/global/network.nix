{lib, ...}: {
  networking = {
    useDHCP = lib.mkDefault true;
    nameservers = [
      "1.1.1.1"
      "1.0.0.1"
    ];

    wireless.iwd = {
      enable = true;
    };
  };
}
