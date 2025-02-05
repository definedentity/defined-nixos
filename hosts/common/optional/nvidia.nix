{ config, ... }:
{
  hardware.nvidia = {
    open = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;

    modesetting.enable = true;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      nvidiaBusId = "PCI:1:0:0";
      amdgpuBusId = "PCI:6:0:0";
    };
  };
}
