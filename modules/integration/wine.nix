{ pkgs, ... }:
{
  # Wine — Windows compatibility layer
  # NOTE: 32-bit graphics support (hardware.graphics.enable32Bit) is handled
  # by the GPU driver module (niri/nvidia.nix); do not duplicate it here.
  environment.systemPackages = with pkgs; [
    wineWowPackages.staging # 32-bit + 64-bit Wine with staging patches (better game compat)
    winetricks              # Helper scripts for Wine prefixes
  ];
}
