{
  pkgs,
  users,
  ...
}:
let
  # Proton-GE ships as a Steam compat tool; expose its Wine binary tree to
  # Lutris by symlinking it into the Lutris runners directory.
  # The `files/` subdirectory has the standard Wine layout (bin/wine, lib/, …).
  protonGE = pkgs.proton-ge-bin;
  protonGEWine = "${protonGE.steamcompattool}/files";
  lutrisRunnerName = protonGE.version; # e.g. GE-Proton10-33

  # Derive home dir from the user data declared in data/users/users.nix
  # so this module stays portable across machines and usernames.
  username = users.user_001.username;
  lutrisRunnersDir = "/home/${username}/.local/share/lutris/runners/wine";
in
{
  # Lutris — open gaming platform for Linux
  # Must live at the system level (not home-manager) so it can access
  # Wine, DXVK, VKD3D-Proton and the 32-bit graphics stack declared
  # in modules/integration/wine.nix and modules/desktop/wm/niri/nvidia.nix.
  environment.systemPackages = with pkgs; [
    lutris
  ];

  # Expose Proton-GE's Wine tree to Lutris as a runner.
  # Runs on every `nixos-rebuild switch`; idempotent (ln -sfn).
  system.activationScripts.lutrisProtonGE = {
    text = ''
      mkdir -p "${lutrisRunnersDir}"
      ln -sfn "${protonGEWine}" "${lutrisRunnersDir}/${lutrisRunnerName}"
    '';
    deps = [ ];
  };
}
