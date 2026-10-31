{ pkgs, ... }:
{
  imports = [
    # ./cursor.nix
    # ./lapce.nix
    # ./rstudio.nix # trimmed (size)
    # ./texmaker.nix # trimmed (size)
    # ./vscode.nix # Microsoft: removed in this port
    ./zed.nix
  ];
}
