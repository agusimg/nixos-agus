{
  config,
  lib,
  pkgs,
  host,
  ...
}:
# ───────────────────────────────────────────────────────────────────────────
# Niri on Intel iGPU + NVIDIA dGPU (RTX 30xx, open kernel modules).
#
# NOTE: upstream's file of this name (intel.nix) is NVIDIA-only. Here it is
# hybrid-aware: set `prime` in data/hosts/hosts.nix to enable PRIME offload
# (niri renders on the Intel iGPU, games/apps use the NVIDIA GPU on demand via
# `nvidia-offload <cmd>` or Steam launch option `nvidia-offload %command%`).
# With `prime = null` the driver runs without PRIME, as before.
# ───────────────────────────────────────────────────────────────────────────
let
  prime = host.prime or null;
  hasPrime = prime != null;
in
{
  imports = [
    ./base.nix
  ];

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    open = true; # Open kernel modules (Turing / RTX 20xx and later)
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    powerManagement.enable = true; # Suspend/resume
    modesetting.enable = true;
    nvidiaSettings = false;

    prime = lib.mkIf hasPrime {
      offload = {
        enable = true;
        enableOffloadCmd = true; # provides `nvidia-offload`
      };
      intelBusId = prime.intelBusId;
      nvidiaBusId = prime.nvidiaBusId;
    };
  };

  hardware.nvidia-container-toolkit = {
    enable = true;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true; # Steam
    extraPackages = with pkgs; [
      intel-media-driver # VA-API for the Intel iGPU
    ];
  };

  # With PRIME offload the compositor runs on Intel, so these must NOT be forced
  # globally (they would push every GL/VA-API client onto the NVIDIA GPU).
  environment.sessionVariables =
    {
      NVD_BACKEND = "direct"; # Hardware video acceleration (nvidia-vaapi-driver)
      ELECTRON_OZONE_PLATFORM_HINT = "auto"; # Electron flicker fix
    }
    // lib.optionalAttrs (!hasPrime) {
      LIBVA_DRIVER_NAME = "nvidia";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    };

  environment.systemPackages = with pkgs; [
    egl-wayland
    nvidia-vaapi-driver
    libvdpau-va-gl
  ];
}
