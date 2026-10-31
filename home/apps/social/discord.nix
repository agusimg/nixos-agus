{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # discord
    # discordo # trimmed (size)
    vesktop # NOTE: We use another client that has better Wayland support
  ];
}
