{ ... }:
{
  hardware.graphics.enable = true;
  hardware.nvidia.open = true;
  hardware.nvidia.prime = {
    sync.enable = true;

    nvidiaBusId = "PCI:1:0:0";
    amdgpuBusId = "PCI:6:0:0";
  };
}
