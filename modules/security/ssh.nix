{ ... }:
{
  # NOTE: sshd is OFF by default on this port (upstream opens TCP/22).
  # Enable it only if you need remote login, and add your own public key
  # to users.users.<name>.openssh.authorizedKeys.keys first.
  services.openssh = {
    enable = false;
    ports = [ 22 ];
    openFirewall = false;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      PubkeyAuthentication = true;
    };
  };

  programs.ssh = {
    startAgent = true;
  };

  # Disable gcr-ssh-agent to avoid conflict with programs.ssh.startAgent
  # (gcr-ssh-agent is auto-enabled by programs.niri via gnome-keyring)
  services.gnome.gcr-ssh-agent.enable = false;
}
