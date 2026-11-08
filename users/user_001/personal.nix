{ pkgs, pkgs-unstable, ... }:
{
  # Apps carried over from the previous configuration that Rhodium does not ship.
  # (Zed, Neovim, fastfetch, Vesktop, Steam + GE-Proton, gamescope, MangoHud,
  # Lutris and foot already come with Rhodium.)
  home.packages = [
    pkgs.heroic
    pkgs.rnote
    pkgs-unstable.antigravity-cli
    pkgs-unstable.affine
    (pkgs.nur.repos.mio.freesmlauncher.overrideAttrs (_: {
      __structuredAttrs = false;
    }))
  ];

  home.shellAliases = {
    ia = "agy --dangerously-skip-permissions";
    antigravity-cli = "agy";
  };
}
