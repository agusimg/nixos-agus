{
  host,
  pkgs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/boot/boot.nix
    ../../modules/services
    ../../modules/hardware
    ../../modules/shell
    ../../modules/security
    ../../modules/users
    ../../modules/manager
    ../../modules/desktop
    ../../modules/desktop/wm/niri/nvidia.nix
    ../../modules/gaming/steam.nix
    ../../modules/integration
    ../../modules/virtualization
    ../../modules/virtualization/docker-nvidia.nix
    ../../modules/apps
    ../../modules/rules
    ../../modules/maintenance
    ../../modules/utils
    ../../modules/network
  ];

  # Base
  # ---------------------------------
  # NOTE: default (LTS) kernel on purpose: the out-of-tree NVIDIA modules are
  # always tested against it. Use pkgs.linuxPackages_latest if you want newer.
  networking = {
    hostName = host.hostname or "nixos";
    networkmanager.enable = true;
  };

  # Modules
  # ---------------------------------
  manager = {
    gdm.enable = false; # greetd + tuigreet is used instead
  };

  # Extra Services / Rules: all hardware-specific ones of the upstream host
  # (ASUS, Keychron, NETGEAR adapter) stay OFF on this machine.
  maintenance.garbageCollection = {
    enable = true;
    schedule = "weekly";
    deleteOlderThan = "30d";
  };

  # VM / Memory tuning
  # ---------------------------------
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
    "vm.vfs_cache_pressure" = 50;
  };

  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "zstd";
    priority = 100;
  };

  # Hardware kept from the previous configuration
  # ---------------------------------
  hardware.opentabletdriver = {
    enable = true;
    daemon.enable = true;
  };

  programs.steam.gamescopeSession.enable = true;

  fonts.packages = [ pkgs.inter ];

  # Extra Args
  # ---------------------------------
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    flake-registry = "";
  };
  nix.channel.enable = false;

  system.stateVersion = "26.05"; # NOTE: do not change: value of the original install
}
