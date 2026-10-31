{ pkgs, ... }:
{
  imports = [
    ./imv.nix
    ./oculante.nix
    ./swayimg.nix
  ];

  home.packages = with pkgs; [
    # darktable # Professional photo management & editing # trimmed (size)
    # djv # Used to view EXR sequences # trimmed (size)
    exiv2 # Manage image metadata
    # feh # Image visualizer (X11)
    # handbrake # Converting video formats & ripping DVDs # trimmed (size)
    # kdePackages.kdenlive # Video editing software # trimmed (size)
    mpv # Media player
    # obs-studio # Recorder # trimmed (size)
    # vlc # Video player # trimmed (size)
    yt-dlp # CLI tool for downloading yt content
  ];
}
