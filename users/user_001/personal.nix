{ pkgs, pkgs-unstable, ... }:
{
  # Apps carried over from the previous configuration that Rhodium does not ship.
  # (Zed, Neovim, fastfetch, Vesktop, Steam + GE-Proton, gamescope, MangoHud and
  # foot already come with Rhodium.)
  home.packages = [
    pkgs.librewolf
    pkgs.heroic
    pkgs.protonup-qt
    pkgs.rnote
    pkgs.deezer-enhanced # unofficial Deezer desktop client
    pkgs-unstable.antigravity-cli
    pkgs-unstable.affine
  ];

  home.shellAliases = {
    ia = "agy --dangerously-skip-permissions";
    antigravity-cli = "agy";
  };
}
