{ pkgs, ... }:
{
  imports = [
    ./fastfetch.nix
  ];

  home.packages = with pkgs; [
    # via # GUI for adjusting RGB lighting # trimmed (size)
    # cowsay # Generate ASCII pictures using a cow # trimmed (size)
    # cmatrix # We all know what this is # trimmed (size)
    # ascii # Interactive ASCII name and symbol chart # trimmed (size)
    trash-cli # Interact with trashcan
  ];
}
