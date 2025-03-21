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
      device = "/dev/disk/by-uuid/ea68fe31-b214-4045-ac7b-89a26e1c276f";
      fsType = "btrfs";
      options = ["subvol=@"];
    };

    "/boot" = {
      device = "/dev/disk/by-uuid/42A0-61E5";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
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
