{
  lib,
  config,
  pkgs,
  ...
}: {
  boot = {
    initrd = {
      availableKernelModules = [
        "nvme"
        "xhci_pci"
        "ahci"
        "usbhid"
        "usb_storage"
        "sd_mod"
      ];
      kernelModules = [];
    };

    kernelPackages = pkgs.linuxPackages_6_12;
    kernelModules = ["kvm-amd"];
    extraModulePackages = [];

    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "max";
      };
      efi.canTouchEfiVariables = true;
    };
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/50332c87-b33f-40b7-b4f0-17553b221651";
      fsType = "btrfs";
      options = ["subvol=@"];
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/66A7-EB05";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    "/mnt/ssd" = {
      device = "/dev/disk/by-uuid/30abf803-a248-45a6-8997-9980597dd660";
      fsType = "btrfs";
    };

    "/mnt/hdd" = {
      device = "/dev/disk/by-uuid/38bac5d3-f0d5-41a8-a73a-dfa923531b17";
      fsType = "btrfs";
    };
  };

  swapDevices = [
    {
      device = "/swapfile";
      size = 1024 * 24;
    }
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  hardware = {
    cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    enableRedistributableFirmware = lib.mkDefault true;
  };
}
