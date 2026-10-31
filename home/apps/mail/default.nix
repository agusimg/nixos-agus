{ pkgs, ... }:
{
  imports = [
    # ./protonmail.nix # trimmed (size)
    # ./thunderbird.nix
  ];

  home.packages = with pkgs; [
    # aerc # Modern terminal email client # trimmed (size)
  ];
}
