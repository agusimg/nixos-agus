{ pkgs, ... }:
{
  imports = [
    ./libreoffice.nix
    # ./onlyoffice.nix # trimmed (size)
    # ./teams.nix # Microsoft: removed in this port
  ];
}
