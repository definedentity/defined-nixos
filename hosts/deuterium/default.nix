{
  imports = [
    ./hardware-configuration.nix

    ./stylix

    ../common/users/toby
    ../common/global

    ../common/optional/nvidia.nix
    ../common/optional/kde.nix
    ../common/optional/pipewire.nix
    ../common/optional/flatpak.nix
    ../common/optional/fail2ban.nix
    ../common/optional/quietboot.nix
    ../common/optional/ssd.nix
    ../common/optional/gamemode.nix
    ../common/optional/fwupd.nix
    ../common/optional/fonts.nix
    ../common/optional/tlp.nix
  ];

  # NVIDIA
  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd = true;
    };

    nvidiaBusId = "PCI:1:0:0";
    amdgpuBusId = "PCI:6:0:0";
  };

  networking.hostName = "deuterium";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "24.11";
}
