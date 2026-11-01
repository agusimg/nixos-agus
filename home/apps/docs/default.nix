{ pkgs, ... }:
{
  imports = [
    # ./anytype.nix
    # ./appflowy.nix
    # ./joplin.nix
    # ./logseq.nix
    # ./notion.nix
    # ./obsidian.nix # trimmed (size)
    # ./okular.nix # trimmed (size)
    # ./roam.nix
    ./standardnotes.nix # trimmed (size)
    ./zathura.nix
  ];
}
