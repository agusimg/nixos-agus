{ pkgs, ... }:
{
  imports = [
    ./firefox.nix
    #./librewolf.nix
    # ./qutebrowser.nix # trimmed (size)
    ./zen.nix # trimmed (size)
  ];

  home.packages = with pkgs; [
    # brave # trimmed (size)
    # tor # trimmed (size)

    # --- Terminal Browsers ---
    w3m # Text-mode WWW browser
    lynx # Classic text browser
    # browsh # Modern text-based browser using Firefox # trimmed (size)
  ];
}
