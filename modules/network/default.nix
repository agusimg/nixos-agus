{ ... }:
{
  imports = [
    ./atuin-server.nix
    ./avahi.nix
    ./plex.nix
    ./roon.nix
    # ./tailscale-client.nix # opt-in: third-party mesh VPN daemon
  ];
}
