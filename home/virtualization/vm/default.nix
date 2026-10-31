{ pkgs, ... }:
{
  imports = [
    # ./qemu.nix # trimmed (size)
  ];

  home.packages = with pkgs; [
    # virtualbox
    # wine
    # darling
  ];
}
