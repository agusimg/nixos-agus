{ pkgs, ... }:
{
  imports = [
    ./discord.nix
    # ./mastodon.nix # trimmed (size)
    # ./matrix.nix # trimmed (size)
    # ./signal.nix # trimmed (size)
    # ./telegram.nix # trimmed (size)
  ];

  home.packages = with pkgs; [
    # weechat # Extensible IRC/chat client # trimmed (size)
  ];
}
