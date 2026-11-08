{ pkgs, ... }:
{
  # Lutris — open gaming platform for Linux
  # Must live at the system level (not home-manager) so it can access
  # Wine, DXVK, VKD3D-Proton and the 32-bit graphics stack declared
  # in modules/integration/wine.nix and modules/desktop/wm/niri/nvidia.nix.
  environment.systemPackages = with pkgs; [
    lutris
  ];
}
