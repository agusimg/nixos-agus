{
  hosts = {
    host_001 = {
      hostname = "nixos";
      description = "agusc laptop (Intel iGPU + NVIDIA RTX 3050)";

      # --- Locale / keyboard (consumed by modules/hardware/keyboard.nix and niri) ---
      timeZone = "America/Argentina/Buenos_Aires";
      locale = "en_US.UTF-8"; # UI language
      extraLocale = "es_AR.UTF-8"; # dates, currency, units, paper, ...
      keyboard = {
        layout = "es,us";
        variant = "nodeadkeys,";
        consoleKeyMap = "es";
      };

      # --- Display ---
      # monitorID: internal panel of an Intel+NVIDIA laptop is almost always
      # "eDP-1". If it is not, niri ignores this block and auto-detects (nothing
      # breaks). Check with: ls /sys/class/drm   (card1-eDP-1 -> "eDP-1")
      mainMonitor = {
        monitorID = "eDP-1";
        monitorResolution = "1920x1080";
        monitorRefreshRate = "144";
        monitorScalingFactor = "1.0";
      };

      # --- Hybrid graphics (PRIME offload) ---
      # From lspci: Intel 00:02.0 -> PCI:0:2:0 | NVIDIA 01:00.0 -> PCI:1:0:0
      # niri renders on the Intel iGPU; use `nvidia-offload <cmd>` (or the Steam
      # launch option `nvidia-offload %command%`) to run something on the RTX 3050.
      prime = {
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };
}
