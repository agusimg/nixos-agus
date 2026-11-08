{
  pkgs,
  users,
  ...
}:
let
  # Proton-GE ships as a Steam compatibility tool.
  # Expose the full tool tree to Steam, Lutris (via UMU) and Heroic:
  # - ~/.local/share/Steam/compatibilitytools.d/
  # - ~/.local/share/lutris/runners/proton/
  protonGE = pkgs.proton-ge-bin;
  protonGETool = "${protonGE.steamcompattool}";
  protonName = protonGE.version; # e.g. GE-Proton10-33

  username = users.user_001.username;
  steamCompatDir = "/home/${username}/.local/share/Steam/compatibilitytools.d";
  lutrisProtonDir = "/home/${username}/.local/share/lutris/runners/proton";
  lutrisWineRunnersDir = "/home/${username}/.local/share/lutris/runners/wine";
in
{
  # Lutris — open gaming platform for Linux
  # Must live at the system level (not home-manager) so it can access
  # Wine, DXVK, VKD3D-Proton and the 32-bit graphics stack declared
  # in modules/integration/wine.nix and modules/desktop/wm/niri/nvidia.nix.
  environment.systemPackages = with pkgs; [
    lutris
  ];

  # Expose Proton-GE declaratively across tools.
  # Also remove any obsolete raw-wine symlinks if they exist.
  system.activationScripts.lutrisProtonGE = {
    text = ''
      mkdir -p "${steamCompatDir}" "${lutrisProtonDir}"
      ln -sfn "${protonGETool}" "${steamCompatDir}/${protonName}"
      ln -sfn "${protonGETool}" "${lutrisProtonDir}/${protonName}"
      rm -f "${lutrisWineRunnersDir}/${protonName}"
    '';
    deps = [ ];
  };
}
