{ pkgs, ... }:
{
  imports = [
    # ./csound.nix # trimmed (size)
    ./ncmpc.nix
    ./ncspot.nix
    # ./puredata.nix # trimmed (size)
    ./rmpc.nix
    # ./sonicpi.nix # trimmed (size)
    ./spotify.nix
    # ./supercollider.nix # trimmed (size)
    # ./tidal.nix # trimmed (size)
    # ./tidalcycles.nix # trimmed (size)
    # ./vcv-rack.nix # trimmed (size)
  ];

  home.packages = with pkgs; [
    # audacious
    # audacity
    # clementine # trimmed (size)
    easyeffects # Equalizer for PipeWire
    helvum # GTK patchbay for PipeWire
    playerctl # CLI util & lib for controlling audio
    cavalier # Terminal audio visualizer

    # --- TUI Music Players ---
    termusic # Feature-rich music player in Rust
    cmus # Small, fast console music player

    # --- Roon ---
    # roon-tui # TUI remote control for Roon # trimmed (size)
    # roon-bridge # Roon audio output endpoint # trimmed (size)
  ];
}
