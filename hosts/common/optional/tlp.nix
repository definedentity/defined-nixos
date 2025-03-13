{
  services = {
    power-profiles-daemon.enable = false;

    tlp = {
      enable = true;

      settings = {
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

        PLATFORM_PROFILE_ON_AC = "performance";
        PLATFORM_PROFILE_ON_BAT = "low-power";

        CPU_BOOST_ON_AC = 1;
        CPU_BOOST_ON_BAT = 0;

        # Requires: Intel Core i 6th gen. (“Skylake”) or newer CPU with intel_pstate scaling driver in active mode
        #CPU_HWP_DYN_BOOST_ON_AC = 1;
        #CPU_HWP_DYN_BOOST_ON_BAT = 0;

        START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
        STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops to charge
      };
    };
  };
}
